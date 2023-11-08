class CartsController < ApplicationController
  def show
    @cartitems = current_cart
  end
end
