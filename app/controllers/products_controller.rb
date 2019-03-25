class ProductsController < ApplicationController
  def index
    @products = Product.includes(:category).order(:title)
    @products = Product.order(:title).page(params[:page]).per(4)

  end

  def show
    @product = Product.includes(:category).find(params[:id])
  end
end
