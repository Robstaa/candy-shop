class CartItemsController < ApplicationController
  def userIndex
    @cart_items = current_user.shopping_cart.products
  end

  def new
  end

  def create
    if current_user.shopping_cart
      @cart_item = CartItem.new
      @cart_item.shopping_cart_id = current_user.shopping_cart.id
      @cart_item.product_id = Product.find(params[:product_id]).id
      @cart_item.save
      redirect_to cart_items_userIndex_path
    else
      shopping_cart = ShoppingCart.create(user_id: current_user.id)
      @cart_item = CartItem.new
      @cart_item.shopping_cart_id = shopping_cart.id
      @cart_item.product_id = Product.find(params[:product_id]).id
      @cart_item.save
      redirect_to cart_items_userIndex
    end
  end

  def edit
  end

  def update
  end

  def delete
  end
end
