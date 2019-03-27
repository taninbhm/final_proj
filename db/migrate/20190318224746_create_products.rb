class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :Image
      t.text :description
      t.decimal :price
      t.string :stock
      t.references :category, foreign_key: true
      t.references :order_item, foreign_key: true
      t.timestamps
    end
  end
end
