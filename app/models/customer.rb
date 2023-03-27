class Customer < ApplicationRecord
    validates_presence_of :name, :phone_no, :address
    validates_uniqueness_of :phone_no
end
