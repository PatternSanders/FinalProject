class CheckoutController < ApplicationController
  def create
    product = Product.find(params[:product_id])

    if product.nil?
      redirect_to root_path
      return
    end

    @session = Stripe::Checkout::Session.create(
      payment_method_types: ["card"],
      success_url:          checkout_success_url + "?session_id={CHECKOUT_SESSION_ID}",
      cancel_url:           checkout_cancel_url,
      line_items:           [
        {
          name:        product.name,
          description: product.description,
          amount:      product.price * 100.to_i,
          currency:    "cad",
          quantity:    1
        },
        {
          name:       "GST",
          desription: "The government will come after us if we dont pay this",
          amount:     (product.price * 100) * 0.05.to_i
        }
      ]
    )

    respond_to do |format|
      format.js
    end
  end

  def success
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
    @payment_intent = Stripe::PaymentIntent.retrieve(@session.payment_intent)
  end

  def cancel

  end
end
