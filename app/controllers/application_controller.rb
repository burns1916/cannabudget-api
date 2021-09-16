class ApplicationController < ActionController::API
    
    private
    
    def current_usercurrent_user
         User.find_by(id: session[:user_id])
    end

    def logged_in?
        !!current_user
    end
end
