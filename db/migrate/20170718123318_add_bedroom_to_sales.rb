class AddBedroomToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :bedroom, :integer
  end
end
