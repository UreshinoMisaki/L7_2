class ProductsController < ApplicationController
  def index
    @products = Product.all
    render
  end

  def new
    @product = Product.new
  end
  
  def create
    puts "aaaaaa"
    puts params
    @product = Product.new(
      pname: params[:product][:pname],
      price: params[:product][:price])
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end
  
  def destroy
    product = Product.find(params[:id])
    product.destroy
    logger.debug("delete")
    redirect_to products_index_path
  end
end
