class AddTaxeToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :taxe, :string
  end
end
