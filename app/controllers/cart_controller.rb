class CartController < ApplicationController
  def create
    id = params[:id].to_i

    unless session[:cart].include?(id)
      session[:cart] << id
      flash[:notice] = "Item added to cart."
    end

    redirect_to root_path
  end

  def destroy
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to root_path
  end
end
