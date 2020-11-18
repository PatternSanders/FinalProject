class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :sku
      t.string :name
      t.float :price
      t.float :weight
      t.string :description
      t.integer :stock
      t.boolean :on_sale

      t.references :category

      t.timestamps
    end
  end
end
