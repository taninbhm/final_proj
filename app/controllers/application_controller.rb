class ApplicationController < ActionController::Base
    before_action :def_categories
    def def_categories
        @myCategories = Category.all
    end
end
