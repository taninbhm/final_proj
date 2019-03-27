class AddProductIdToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_items, :product
  end
end
