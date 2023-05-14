class Order < ApplicationRecord
  belongs_to :customer
  validates_presence_of : order_code, :bill_no, :product_name, :quantity, :price, :discount, :customer_code
  validates_uniqueness_of :order_code 
end
