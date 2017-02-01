class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :appointment
      t.string :Contexte
      t.string :action
      t.text :comment

      t.timestamps null: false
    end
  end
end
