class AddLatitudeToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :latitude, :float
  end
end
