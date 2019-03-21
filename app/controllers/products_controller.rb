class ProductsController < ApplicationController
  def index
    @products = Product.includes(:category).order(:title)
    @products = Product.all
  end

  def show
    @product = Product.includes(:category).find(params[:id])
  end
end
