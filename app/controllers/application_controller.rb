class ApplicationController < ActionController::Base
    before_action :def_categories
    before_action :def_products
    def def_categories
        @myCategories = Category.all
    end

    def def_products
        @myProducts = Product.all
    end
end
