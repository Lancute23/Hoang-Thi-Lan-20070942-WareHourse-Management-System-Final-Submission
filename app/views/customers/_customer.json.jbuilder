json.extract! customer, :id, :cus_ID, :name, :address, :phone_number, :created_at, :updated_at
json.url customer_url(customer, format: :json)
