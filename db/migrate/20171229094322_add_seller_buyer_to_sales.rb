class AddSellerBuyerToSales < ActiveRecord::Migration[5.0]
  def change
    add_column :sales, :seller_buyer, :string
  end
end
