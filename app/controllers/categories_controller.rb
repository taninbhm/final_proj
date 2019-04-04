# frozen_string_literal: true

class CategoriesController < ApplicationController
  add_breadcrumb 'Categories', :categories_path, only: %i[index show]
  def index
    @categories = Category.order(:name)
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    add_breadcrumb @category.name, categories_path(@category)
  end
end
