class OrderItemsController < ApplicationController

    def index
        @order_items = OrderItem.find(session[:cart])
    end

    def create
        @product_id = params[:product_id].to_i
        @quantity = params[:quantity].to_i
        @price = params[:price].to_f
        @order_item = OrderItem.new(quantity: @quantity,
                                    product_id: @product_id,
                                    price: @price)
        @order_item.save
        session[:cart] << @order_item.id
        redirect_to cart_path

    end

    def destroy
        @order_item = OrderItem.find(params[:id])
        @order_item.destroy
        session[:cart].delete(params[:id].to_i)
        logger.debug session[:cart].inspect
        redirect_to cart_path
      end
end
