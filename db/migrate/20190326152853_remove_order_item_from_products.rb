class RemoveOrderItemFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :order_item_id
  end
end
