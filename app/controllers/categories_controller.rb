class CategoriesController < ApplicationController
  def index
    @categories = Category.order(:id)
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

end
