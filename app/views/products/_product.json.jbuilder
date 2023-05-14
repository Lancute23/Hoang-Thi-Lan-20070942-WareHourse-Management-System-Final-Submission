json.extract! product, :id, :code, :product_name, :describle, :price, :discount, :supplier_id, :created_at, :updated_at
json.url product_url(product, format: :json)
