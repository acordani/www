class AddZipCodeToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :zip_code, :string
  end
end
