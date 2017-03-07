class ProductsController < ApplicationController
  def index
    session[:cart] = cart
    @cart = session[:cart]
  end

  def add
    if params[:product]
      session[:cart] << params[:product]
    end
    @cart = session[:cart]
    redirect_to '/'
  end

end
