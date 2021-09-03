class CreateCrops < ActiveRecord::Migration[6.1]
  def change
    create_table :crops do |t|
      t.string :strain_name
      t.datetime :harvest_date
      

      t.timestamps
    end
  end
end
