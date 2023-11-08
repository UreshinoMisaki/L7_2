class CartItemsController < ApplicationController
  def new
    @cartitem = CartItem.new
    @pid = Product.find(params[:product_id])
  end
  
  def create
    puts "paramsの中身"
    puts params
    @cartitem = CartItem.new(
      qty: params[:cart_item][:qty],
      cart_id: current_cart,
      product_id: params[:cart_item][:product_id]
      )
    @cartitem.save
    redirect_to carts_show_path
  end
  
  def destroy
    cartitem = Cartitem.find(params[:id])
    cartitem.destroy
    redirect_to carts_show_path
  end
end
