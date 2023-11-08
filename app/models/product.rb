class Product < ApplicationRecord
    has_one :cartitem
    belongs_to :cart
    
end
