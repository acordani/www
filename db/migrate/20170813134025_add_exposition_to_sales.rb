class AddExpositionToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :exposition, :string
  end
end
