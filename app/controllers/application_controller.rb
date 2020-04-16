

  class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?

    def home
    end
    
    def about
    end

    

    def current_user
        # returns a User or nil
        User.find_by(id: session[:user_id])
    end

    def logged_in?
        # if current_user
        #     return true
        # else
        #     return false
        # end

        !!current_user
    end

    def authorized

        # redirect_to login_path unless logged_in?

        if !logged_in?
            flash["error"] = "You must be logged in"
            redirect_to login_path
        end
    end
end



