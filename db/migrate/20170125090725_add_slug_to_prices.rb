class AddSlugToPrices < ActiveRecord::Migration
  def change
    add_column :prices, :slug, :string
  end
end
