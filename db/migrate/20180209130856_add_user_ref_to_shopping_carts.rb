class AddUserRefToShoppingCarts < ActiveRecord::Migration[5.1]
  def change
    add_reference :shopping_carts, :user, foreign_key: true
  end
end
