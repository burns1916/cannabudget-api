require 'pry'
class CropsController < ApplicationController
    before_action :get_farm

    def index
        crops = @farm.crops
        render json: crops, include: [:farm]
    end

    def show
        crop = Crop.find_by(params[:id])
        render json: crop, include: [:farm]
    end

    def create
        crop = @farm.crops.build(crop_params)
        binding.pry
            if crop.save
                render json: crop, status: 200
            else
                error_resp = {
                    error: crop.errors.full_messages.to_sentence
                  }
                  render json: error_resp, status: :unprocessable_entity
            end
    end

    def update
        crop = Crop.find_by(params[:id])
        crop.update(crop_params)
            if crop.save
                render json: crop
            else
                render json: crop.errors.full_messages
            end
    end

    def destroy
        crop = Crop.find_by(params[:id])
        crop.delete
        render json: flash[:message] = "Crop Deleted"
    end

    private

    def crop_params
        params.require(:crop).permit(:strain_name, :harvest_date)
    end

    def get_farm
        @farm = Farm.find(params[:farm_id])
    end

end
