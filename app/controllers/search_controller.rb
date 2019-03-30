class SearchController < ApplicationController
  def results
    @query = params[:q]
    @products = Product.where('title LIKE ?', "%#{@query}%")
  end
end
