class ChangeYieldToTotal < ActiveRecord::Migration[6.1]
  def change
    rename_column :farms, :yield, :total
  end
end
