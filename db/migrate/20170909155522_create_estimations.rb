class CreateEstimations < ActiveRecord::Migration[5.0]
  def change
    create_table :estimations do |t|
      t.string :number
      t.integer :surface
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :file
      t.references :neighborhood, foreign_key: true
      t.references :city, foreign_key: true
      t.references :citysearch, foreign_key: true

      t.timestamps
    end
  end
end
