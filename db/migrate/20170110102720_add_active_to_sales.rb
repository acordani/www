class AddActiveToSales < ActiveRecord::Migration
  def change
    add_column :sales, :active, :boolean, default: true
  end
end
