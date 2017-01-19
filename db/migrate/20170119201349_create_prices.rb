class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :price_min_house
      t.integer :price_average_house
      t.integer :price_max_house
      t.integer :price_min_apartment
      t.integer :price_average_apartment
      t.integer :price_max_apartment
      t.string :street
      t.string :city

      t.timestamps null: false
    end
  end
end
