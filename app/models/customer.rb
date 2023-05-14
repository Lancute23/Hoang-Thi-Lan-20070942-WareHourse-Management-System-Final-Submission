class Customer < ApplicationRecord 
    validates_presence_of :code, :name, :address, :phone
    validates_uniqueness_of :code
end
