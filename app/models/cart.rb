class Cart < ApplicationRecord
    has_many :cartitems
    has_many :cartitems_products, through: :cartitems, source: :product
    
    def total_price
        cart_items.to_a.sum { |product| cartitem.ltotal_price }
    end
end
