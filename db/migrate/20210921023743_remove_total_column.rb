class RemoveTotalColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :farms, :total
  end
end
