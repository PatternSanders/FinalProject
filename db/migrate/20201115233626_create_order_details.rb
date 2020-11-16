class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.integer :product_id
      t.float :price
      t.integer :sku
      t.integer :quantity

      t.timestamps
    end
  end
end
