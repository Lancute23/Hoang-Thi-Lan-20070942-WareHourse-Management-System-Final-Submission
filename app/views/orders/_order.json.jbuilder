json.extract! order, :id, :order_code, :bill_no, :product_name, :quantity, :price, :discount, :date, :customer_code, :customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)
