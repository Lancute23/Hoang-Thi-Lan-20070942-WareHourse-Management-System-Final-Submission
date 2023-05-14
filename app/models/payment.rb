class Payment < ApplicationRecord
  belongs_to :customer 
  validates_presence_of :bill_no, :amount, :pay_type, :date
end
