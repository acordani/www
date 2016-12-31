class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :price
      t.string :title
      t.text :description
      t.string :city

      t.timestamps null: false
    end
  end
end
