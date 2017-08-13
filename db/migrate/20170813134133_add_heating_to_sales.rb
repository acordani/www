class AddHeatingToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :heating, :string
  end
end
