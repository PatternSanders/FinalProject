class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @products = Product.all
  end
end
