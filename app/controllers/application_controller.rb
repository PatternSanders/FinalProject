class ApplicationController < ActionController::Base
  before_action :initialize_session
  after_action :add_csrf_token
  helper_method :cart

  inertia_share do
    {
      cart: Product.find(session[:cart])
    }
  end

  private

  def add_csrf_token
    cookies["XSRF-TOKEN"] = form_authenticity_token
  end

  def initialize_session
    session[:cart] ||= [] # Empty cart is an empty array.
  end

  def cart
    Product.find(session[:cart])
  end
end
