class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:session][:username])
            if user && user.authenticate(params[:session][:password])
                sessions[:user_id] = user.id
                render json: user
            else
                flash[:message] = "Login information was incorrect"
            end
    end

    def destroy
        session.delete :user_id
        if !session[:user_id]
            render json: {
                notice: "You have logged out."
            }
        else render json: {
            error: "No one logged in"
        }
    end

    def get_current_user
        if logged_in?
            render json: current_user
        else
            render json: "Please Login"
    end
end
