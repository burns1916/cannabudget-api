class CropsController < ApplicationController

    def index
        crops = Crops.all
        render json: crops, include [:farm]
    end

    def show
        crop = Crop.find_by(params[:id])
        render json: crop, include [:farm]
    end

    def create
        crop = Crop.new(crop_params)
            if crop.save
                render json: crop
            else
                render json: crop.errors.full_messages
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
        crop.destroy
        render json: flash[:message] = "Crop Deleted"
    end

    private

    def crop_params
        params.require(:crop).permit(:farm_id, :strain_name, :harvest_date)
    end

end
