class Supplier < ApplicationRecord 
    validates_presence_of :sup_code, :supplier_name, :product_name, :address, :email
    
end
