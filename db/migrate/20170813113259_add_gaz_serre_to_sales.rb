class AddGazSerreToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :gaz_serre, :string
  end
end
