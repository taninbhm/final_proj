class ApplicationController < ActionController::Base
    before_action :def_categories
    before_action :def_products
    before_action :def_pages

    def def_categories
        @myCategories = Category.all
    end

    def def_products
        @myProducts = Product.all
    end
    def def_pages
        @myPages = Page.all
    end
end
