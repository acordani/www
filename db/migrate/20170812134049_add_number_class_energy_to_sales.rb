class AddNumberClassEnergyToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :number_class_energy, :string
  end
end
