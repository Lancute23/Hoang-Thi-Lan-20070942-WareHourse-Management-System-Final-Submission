json.extract! product, :id, :product_id, :product_describle, :price, :discount, :supplier_id, :created_at, :updated_at
json.url product_url(product, format: :json)
