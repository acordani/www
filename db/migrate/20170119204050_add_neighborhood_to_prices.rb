class AddNeighborhoodToPrices < ActiveRecord::Migration
  def change
    add_column :prices, :neighborhood, :string
  end
end
