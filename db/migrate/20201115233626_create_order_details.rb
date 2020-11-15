class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      t.int :order_id
      t.int :product_id
      t.double :price
      t.int :sku
      t.int :quantity

      t.timestamps
    end
  end
end
