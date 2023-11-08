class CartItem < ApplicationRecord
    belongs_to :product
    belongs_to :cart
    
    def ltotal_price
        product.price * qty
    end
end
