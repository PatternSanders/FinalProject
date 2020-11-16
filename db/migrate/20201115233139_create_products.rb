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
      t.integer :stock
      t.references :category

      t.timestamps
    end
  end
end
