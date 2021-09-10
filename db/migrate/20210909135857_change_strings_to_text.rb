class ChangeStringsToText < ActiveRecord::Migration[6.1]
  def change
    change_column :crops, :strain_name, :text
    change_column :expenses, :name, :text
    change_column :farms, :name, :text
    change_column :farms, :location, :text
    change_column :incomes, :name, :text
    change_column :users, :username, :text
    change_column :users, :password_digest, :text
  end
end
