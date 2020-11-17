json.extract! product, :id, :sku, :name, :description, :image, :price, :weight, :stock

json.url product_path(product)
# json.image_url rails_blob_path(product.image, only_path: true)

json.category do
  json.partial!("categories/category", category: product.category)
end
