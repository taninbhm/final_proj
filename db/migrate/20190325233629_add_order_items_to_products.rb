class AddOrderItemsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :order_item, foreign_key: true
  end
end
