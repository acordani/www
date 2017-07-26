class AddLongitudeToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :longitude, :float
  end
end
