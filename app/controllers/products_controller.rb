class ProductsController < ApplicationController

  def index
    @products = Product.includes(:category).order(:title)
    @products = Product.order(:id).page(params[:page]).per(2)
  end

  def show
    @product = Product.includes(:category).find(params[:id])
  end
end
