class ProductsController < ApplicationController
  def index
    products = Product.prep_for_react(Product.all)
    categories = Category.prep_for_react(Category.all)
    render inertia: "App", props: { products: products, categories: categories }
  end

  def show
    product = Product.find(params[:id]).props
    categories = Category.prep_for_react(Category.all)
    render inertia: "App", props: { products: [product], categories: categories }
  end
end
