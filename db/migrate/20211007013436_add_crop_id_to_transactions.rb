class AddCropIdToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :crop_id, :integer
  end
end
