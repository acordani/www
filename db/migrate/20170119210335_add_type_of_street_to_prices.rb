class AddTypeOfStreetToPrices < ActiveRecord::Migration
  def change
    add_column :prices, :type_of_street, :string
  end
end
