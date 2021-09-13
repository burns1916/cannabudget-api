class FarmsController < ApplicationController

    def index
        farms = Farms.all
        render json: farms, include: [:user]
    end

    def show
        farm = Farm.find_by(params[:id])
        render json: farm, include: [:user]
    end

    def create
        farm = Farm.new(current_user.farms.build(farm_params))
            if farm.save
                render json: farm
            else
                render json: farm.errors.full_messages
            end
    end

    def update
        farm = Farm.find_by(params[:id])
        farm.update(farm_params)
            if farm.save
                render json: farm
            else
                render json: farm.errors.full_massages
            end
    end

    
    def destroy
        farm = Farm.find_by(params[:id])
        farm.delete
        render json: flash[:message] = "Farm Deleted"
    end

    private

    def farm_params
        params.require(:farm).permit(:user_id, :name, :location)
    end
end
