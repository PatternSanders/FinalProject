class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.int :sku
      t.string :name
      t.double :price
      t.double :weight
      t.string :description
      t.string :thumbnail
      t.string :image
      t.string :category
      t.int :stock

      t.timestamps
    end
  end
end
