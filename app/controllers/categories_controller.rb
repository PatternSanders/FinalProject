class CategoriesController < ApplicationController
  def index
    categories = Category.prep_for_react(Category.all)
    products = Product.prep_for_react(Product.all)
    render inertia: "App", props: { products: products, categories: categories }
  end

  def show
    categories = Category.prep_for_react(Category.all)
    category = Category.find(params[:id])
    products = Product.prep_for_react(Product.where(category_id: category.id))
    render inertia: "App", props: { products: products, categories: categories }
  end
end
