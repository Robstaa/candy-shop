class AddProductCategoryRefToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :product_category, foreign_key: true
  end
end
