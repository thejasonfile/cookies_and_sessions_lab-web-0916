class ProductsController < ApplicationController

  def index
    @cart = cart
    render :index
  end

  # def add
  #   product = Product.new(name: params[:name])
  #   session[:cart] << product
  #   redirect_to root_path
  # end

  def add
    cart << params[:product]
      redirect_to "/"
  end

end
