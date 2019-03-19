class ProductsController < ApplicationController
  def index
    @products = Product.includes(:category)
    @products = Product.all
  end

  def show
  end
end
