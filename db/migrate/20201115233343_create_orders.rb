class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.int :customer_id
      t.int :amount
      t.string :shipping_address
      t.string :order_address
      t.string :order_date
      t.string :status

      t.timestamps
    end
  end
end
