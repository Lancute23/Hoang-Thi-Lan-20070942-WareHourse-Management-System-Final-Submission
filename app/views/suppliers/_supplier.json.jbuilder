json.extract! supplier, :id, :sup_ID, :product_name, :address, :email, :pay_method, :discount, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
