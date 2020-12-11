class AddCustomerToOrderDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :order_details, :customer, :integer
  end
end
