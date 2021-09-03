class AddFarmIdToCrops < ActiveRecord::Migration[6.1]
  def change
    add_column :crops, :farm_id, :integer
  end
end
