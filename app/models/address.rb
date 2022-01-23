class Address < ApplicationRecord
    belongs_to :customer
    
    def shipping_address_for_view
        self.postal_code + "　" + self.address + "　" + self.name
  	end
end
