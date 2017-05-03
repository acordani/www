class CreateProspects < ActiveRecord::Migration[5.0]
  def change
    create_table :prospects do |t|
      t.string :first_name
      t.string :last_name
      t.string :society
      t.string :phone_number
      t.string :mail

      t.timestamps
    end
  end
end
