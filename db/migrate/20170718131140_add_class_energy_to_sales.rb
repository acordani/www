class AddClassEnergyToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :class_energy, :string
  end
end
