class AddNumberGazSerreToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :number_gaz_serre, :string
  end
end
