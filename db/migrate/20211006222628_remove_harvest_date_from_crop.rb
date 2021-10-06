class RemoveHarvestDateFromCrop < ActiveRecord::Migration[6.1]
  def change
    remove_column :crops, :harvest_date
  end
end
