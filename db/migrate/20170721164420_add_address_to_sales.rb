class AddAddressToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :address, :string
  end
end
