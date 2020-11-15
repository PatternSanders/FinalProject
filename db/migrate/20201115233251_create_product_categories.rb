class CreateProductCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :product_categories do |t|
      t.int :product_id
      t.int :category_id

      t.timestamps
    end
  end
end
