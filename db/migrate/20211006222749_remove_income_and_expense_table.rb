class RemoveIncomeAndExpenseTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :incomes
    drop_table :expenses
  end
end
