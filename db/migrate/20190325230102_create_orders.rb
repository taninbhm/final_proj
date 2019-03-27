class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :shipName
      t.string :address
      t.string :city
      t.string :province
      t.string :postalCode
      t.string :trackingNumber
      t.decimal :sub_total
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
