class Product < ApplicationRecord
  belongs_to :product_category
  has_many :cart_items

end
