class AddYieldToFarms < ActiveRecord::Migration[6.1]
  def change
    add_column :farms, :yield, :integer
  end
end
