class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, only: [:id, :username]
    end

    def show
        user = User.find_by(params[:id])
        render json: user, only: [:id, :username]
    end

    def create
        user = User.new(user_params)
            if user.save
                session[:user_id] = user.id
                render json: user, status: 200
            else
                response = {
                    error: user.errors.full_messages.to_sentence
                }
                render json: response, status: :unprocessable_entity
            end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
