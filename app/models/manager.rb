class Manager < ApplicationRecord
    validates_presence_of :name, :address
end
