class AddLivingToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :living, :string
  end
end
