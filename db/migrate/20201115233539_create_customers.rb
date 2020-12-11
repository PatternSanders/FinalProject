class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :password
      t.string :full_name
      t.string :billing_address
      t.string :default_shipping_address
      t.string :province
      t.string :phone
      t.references :order_detail

      t.timestamps
    end
  end
end
