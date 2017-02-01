class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :firstname
      t.string :lastname
      t.string :mail
      t.string :phone_number
      t.string :portable
      t.string :skype
      t.string :website
      t.string :facebook
      t.string :linkedin
      t.string :job

      t.timestamps null: false
    end
  end
end
