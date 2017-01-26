class AddAddressToPrices < ActiveRecord::Migration
  def change
    add_column :prices, :address, :string
  end
end
