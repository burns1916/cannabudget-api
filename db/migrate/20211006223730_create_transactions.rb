class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :income
      t.integer :expense
      t.timestamps
    end
  end
end
