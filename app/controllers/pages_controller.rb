class PagesController < ApplicationController
    def Home
    end
    def index
        @pages = Page.order(:title)
        @pages = Page.all
      end

      def show
        @page = Page.find(params[:id])
      end

end
