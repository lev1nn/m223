class Product < ApplicationRecord 
    def self.update_with_lock(id, new_attributes)
        record = find(id)
    
        record.lock!
    end
end
