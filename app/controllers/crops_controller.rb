require 'pry'
class CropsController < ApplicationController

    def index
        crops = Crop.all
        render json: crops, include: [:farm]
    end

    def show
        crop = Crop.find(params[:id])
        render json: crop, include: [:farm]
    end

    def create
        crop = Crop.new(crop_params)
            if crop.save
                render json: crop, status: 200
            else
                error_resp = {
                    error: crop.errors.full_messages.to_sentence
                  }
                  render json: error_resp, status: :unprocessable_entity
            end
    end

    def destroy
        crop = Crop.find(params[:id])
        crop.delete
        render json: flash[:message] = "Crop Deleted"
    end

    private

    def crop_params
        params.require(:crop).permit(:strain_name, :farm_id, income_attributes: [:name, :amount, :id], expense_attributes: [:name, :amount, :id])
    end

end
