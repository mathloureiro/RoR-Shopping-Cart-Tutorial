class CartController < ApplicationController
  
  def add
    # id is the product id via 'Add to cart' & routes
    id = params[:id] 
    cart[id] ? cart[id] + 1 : cart[id] = 1
    redirect_to :back
  end
  
  def clearCart
    session[:cart] = nil
    redirect_to action: :index
  end
  
  def index
    @cart = cart
  end
 
end
