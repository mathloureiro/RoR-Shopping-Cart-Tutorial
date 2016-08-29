class CartController < ApplicationController
  
  before_action :authenticate_user!, :set_cart
  
  # id is the product id via 'Add to cart' & routes.
  # We're creating a cart session hash with key (product id) and value (quantity 1 or +1). This creates ["1", 1], ["2", 1], ["3", 2] etc.
  # cart is defined at the Application Controller.
  
  def add
    id = params[:id] 
    cart = @cart
    cart[id] ? cart[id] = cart[id] + 1 : cart[id] = 1 
    flash[:notice] = "Added to cart"
    redirect_to :back
  end
  
  def clearCart
    @cart = nil
    redirect_to action: :index
  end
  
  def index
  end

  private
    def set_cart
      @cart = session[:cart]
    end
 
end
