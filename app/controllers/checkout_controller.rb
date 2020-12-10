class CheckoutController < ApplicationController
  include ActionView::Helpers::NumberHelper
  def create

    if cart.nil?
      redirect_to root_path
      return
    end

    cart_json = []
    cart_taxes = 0
    cart.each do |product|
      cart_json.push({
          name:        product.name,
          description: product.description,
          amount:      number_with_precision(product.price * 100, precision: 2, strip_insignificant_zeros: true),
          currency:    "cad",
          quantity:    1
      })
      cart_taxes += (product.price * 100) * 0.05
    end

    cart_json.push({
      name:        "GST",
      description: "The government will come after us if we dont pay this",
      amount:      number_with_precision(cart_taxes * 100, precision: 2, strip_insignificant_zeros: true),
      currency:    "cad",
      quantity:    1
    })

    @session = Stripe::Checkout::Session.create(
      payment_method_types: ["card"],
      success_url:          checkout_success_url + "?session_id={CHECKOUT_SESSION_ID}",
      cancel_url:           checkout_cancel_url,
      line_items:           [cart_json.as_json]
    )

    respond_to do |format|
      format.json { render json: { publishable_key: Rails.configuration.stripe[:publishable_key], session_id: @session.id } }
    end
  end

  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    line_items = Stripe::Checkout::Session.list_line_items(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)

    order = Order.create(
      shipping_address: @session.shipping_address_collection,
      order_date: Time.now,
      status: @session.payment_status
    )

    line_items.data.each do |item|
      if(!item.description.include? "government")
        product = Product.find_by(description: item.description)
        OrderDetail.create(
          order_id:   order.id,
          product_id: product.id,
          price:      item.amount_total * 100
        )
      end
    end
    session[:cart] = nil
  end

  def cancel; end
end
