class AddZipCodeToPrices < ActiveRecord::Migration
  def change
    add_column :prices, :zip_code, :string
  end
end
