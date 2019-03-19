class CategoriesController < ApplicationController
  def index
    @categories = Category.order(:name)
    @categories = Category.all
  end

  def show

  end

end
