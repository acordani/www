class AddCitysearchIdToNeighborhoods < ActiveRecord::Migration[5.0]
  def change
    add_column :neighborhoods, :citysearch_id, :integer
  end
end
