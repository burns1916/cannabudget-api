class FarmsController < ApplicationController

    def index
        farms = Farm.all
        render json: farms, include: [:user]
    end

    def new
        
    end

    def show
        farm = Farm.find(params[:id])
        render json: farm, include: [:user]
    end

    def create
        farm = current_user.farms.build(farm_params)
            if farm.save
                render json: farm, status: 200
            else
                error_resp = {
                    error: farm.errors.full_messages.to_sentence
                }
                render json: error_resp, status: :unprocessable_entity
            end
    end

    def update
        farm = Farm.find(params[:id])
        farm.update(farm_params)
            if farm.save
                render json: farm
            else
                render json: farm.errors.full_massages
            end
    end

    
    def destroy
        farm = Farm.find(params[:id])
        farm.delete
        render json: {notice: "Farm Deleted"}, status: 200
    end

    private

    def farm_params
        params.require(:farm).permit(:name, :location, crops_attributes: [:strain_name, :id])
    end
end
