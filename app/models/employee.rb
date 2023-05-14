class Employee < ApplicationRecord 
    validates_presence_of :name, :code, :address, :phone_number
    validates_uniqueness_of :code
end
