class AddMailToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :mail, :string
  end
end
