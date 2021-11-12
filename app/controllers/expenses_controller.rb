class ExpensesController < ApplicationController

    def index
        expenses = Expense.all
        render json: expenses, include: [:crop]
    end

    def show
        expense = Expense.find(params[:id])
        render json: expense, include: [:crop]
    end

    def create
        expense = Expense.new(expense_params)
        if expense.save
            render json: expense, include: [:crop]
        else
            error_resp = {
                error: expense.errors.full_messages.to_sentence
            }
            render json: error_resp, status: :unprocessable_entity
        end
    end

    def destroy
        expense = Expense.find(params[:id])
        expense.destroy
        render json: {notice: "Expense Deleted"}, status: 200
    end

    private

    def expense_params
        params.require(:expense).permit(:name, :amount, :crop_id)
    end

end
