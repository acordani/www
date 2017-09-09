class AddSlugToEstimations < ActiveRecord::Migration[5.0]
  def change
    add_column :estimations, :slug, :string
  end
end
