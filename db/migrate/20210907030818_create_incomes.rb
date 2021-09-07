class CreateIncomes < ActiveRecord::Migration[6.1]
  def change
    create_table :incomes do |t|
      t.string :name
      t.integer :amount
      t.integer :crop_id
      t.timestamps
    end
  end
end
