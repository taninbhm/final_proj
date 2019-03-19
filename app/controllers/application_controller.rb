class ApplicationController < ActionController::Base
    before_action :def_categories
    def def_categories
        @categories = Category.all
    end
end
