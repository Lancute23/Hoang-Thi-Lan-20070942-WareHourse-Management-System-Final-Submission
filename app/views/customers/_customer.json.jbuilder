json.extract! customer, :id, :name, :phone_no, :address, :created_at, :updated_at
json.url customer_url(customer, format: :json)
