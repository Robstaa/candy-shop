
puts "Seeding starts"

puts "Deleting old items"

if Product.last
  CartItem.destroy_all
  Product.destroy_all
  ProductCategory.destroy_all
end

puts "Creating new items"

5.times do
  cat = ProductCategory.create(name: Faker::Dessert.flavor)
  5.times do
    Product.create(name: Faker::Dessert.variety, price: rand(2..20), product_category_id: cat.id)
  end
end


puts "Seeding done"
