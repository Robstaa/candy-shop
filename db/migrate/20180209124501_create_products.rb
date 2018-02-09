class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :color
      t.string :size
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
