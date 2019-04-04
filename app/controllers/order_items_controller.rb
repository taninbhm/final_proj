# frozen_string_literal: true

class OrderItemsController < ApplicationController
  before_action :logd

  def index
    @order_items = OrderItem.find(session[:cart])
    logger.debug session[:cart].inspect
  end

  def create
    @product_id = params[:product_id].to_i
    @quantity = params[:quantity].to_i
    @price = params[:price].to_f
    @order_item = OrderItem.new(quantity: @quantity,
                                product_id: @product_id,
                                price: @price)
    @order_item.save
    @quantity.times do
      session[:cart] << @order_item.id.to_s
    end
    redirect_to cart_path
  end

  def update
    @order_item = OrderItem.find(params[:id])
    @quantity = params[:quantity].to_i
    @order_item.update(quantity: @quantity)
    @order_item.save
    session[:cart].find.count.times do
      session[:cart].delete(params[:id])
    end

    @quantity.times do
      session[:cart] << @order_item.id.to_s
    end
    redirect_to cart_path
    end

  def logd
    logger.debug session[:cart].inspect
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @quantity = params[:quantity].to_i
    @order_item.destroy
    redirect_to cart_path
  end
end
