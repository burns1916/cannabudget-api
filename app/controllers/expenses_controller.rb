class ExpensesController < ApplicationController

    def index
        expenses = Expense.all
        render json: expenses, include: [:crop]
    end

    def show
        expense = Expense.find_by(params[:id])
        render json: expense, include: [:crop]
    end

    def create
        
    end
end
