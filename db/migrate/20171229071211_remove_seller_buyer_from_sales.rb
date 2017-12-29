class RemoveSellerBuyerFromSales < ActiveRecord::Migration[5.0]
  def change
    remove_column :sales, :seller_buyer, :boolean
  end
end
