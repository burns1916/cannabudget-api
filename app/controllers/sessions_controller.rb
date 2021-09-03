class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:session][:username])
            if user && user.authenticate(params[:session][:password])
                sessions[:user_id] = user.id
                render json: user
            else
                render json: user.errors.full_messages
            end
    end

    
end
