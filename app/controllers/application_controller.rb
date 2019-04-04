class ApplicationController < ActionController::Base
    before_action :def_categories
    before_action :def_products
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :def_pages
    # before_action :current_cart
    before_action :init_cart
    before_action :shopping_items

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
      end

    def def_categories
        @myCategories = Category.all
    end

    def def_products
        @myProducts = Product.all
    end
    def def_pages
        @myPages = Page.all
    end

    def shopping_items
        @order_items = OrderItem.find(session[:cart])
    end

    # def current_cart
    #     @current_cart ||= session[:cart]
    # end
    # helper_method :current_cart
    private

    def init_cart
        session[:cart] ||= []
    end
end
