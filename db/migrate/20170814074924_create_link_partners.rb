class CreateLinkPartners < ActiveRecord::Migration[5.0]
  def change
    create_table :link_partners do |t|
      t.references :sale, foreign_key: true
      t.references :partner, foreign_key: true
      t.string :link
      t.boolean :active

      t.timestamps
    end
  end
end
