class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :sku
      t.string :name
      t.float :price
      t.float :weight
      t.string :description
      t.string :thumbnail
      t.string :image
      t.string :category
      t.integer :stock

      t.timestamps
    end
  end
end
