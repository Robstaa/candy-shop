class ShoppingCart < ApplicationRecord
  belongs_to :user
  has_many :cart_items

  has_many :produtcs , through: :card_items
end
