class AddPhaseToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :phase, :string
  end
end
