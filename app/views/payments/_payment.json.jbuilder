json.extract! payment, :id, :bill_no, :amount, :pay_type, :date, :customer_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
