class Public::CartItemsController < ApplicationController
  def index
    
    @cart_items = CartItem.where(customer_id: current_customer.id)
  end

  def update
  end

  def create
    cart_item_new = CartItem.new(cart_item_params)
    cart_item_new.customer_id = current_customer.id
    cart_item_new.save
    redirect_to cart_items_path
  end

  def destroy
  end
  
  private
  def cart_item_params
    params.permit(:amount, :customer_id, :item_id)
  end
end
