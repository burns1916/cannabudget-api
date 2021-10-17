class IncomesController < ApplicationController

    def index
        incomes = Income.all
        render json: incomes, include: [:crop]
    end

    def show
        income = Income.find(params[:id])
        render json: income, include: [:crop]
    end

    def create
        income = Income.new(income_params)
        if income.save
            render json: income, include: [:crop]
        else
            error_resp = {
                error: income.errors.full_messages.to_sentence
            }
            render json: error_resp, status: :unprocessable_entity
        end
    end

    def destroy
        income = Income.find(params[:id])
        income.delete
        render json: {notice: "Income Deleted"}, status: 200
    end

    private

    def income_params
        params.require(:income).permit(:name, :amount, :crop_id)
    end

end
