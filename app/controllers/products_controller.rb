# frozen_string_literal: true

class ProductsController < ApplicationController
  add_breadcrumb 'Categories', :categories_path, only: %i[index show]
  add_breadcrumb 'Products', :products_path, only: %i[index show]

  def index
    @products = Product.includes(:category).order(:title)
    @products = Product.order(:title).page(params[:page]).per(4)
  end

  def show
    @product = Product.includes(:category).find(params[:id])
    add_breadcrumb @product.category.name, category_path(@product.category.id)
    add_breadcrumb @product.title, product_path(@product)
  end
end
