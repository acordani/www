class AddEstimationToSamples < ActiveRecord::Migration[5.0]
  def change
    add_column :samples, :estimation, :string
  end
end
