

  class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?, :admin?

    def home
    end
    
    def about
    end

    

    def current_user
        # returns a User or nil
        User.find_by(id: session[:user_id])
    end

    def logged_in?
     

        !!current_user
    end

    def authorized


        if !logged_in?
            flash["error"] = "You must be logged in"
            redirect_to login_path
        end
    end

    def admin?
        if User.find_by(id: session[:user_id]) == nil
            return false
        else
            User.find_by(id: session[:user_id])[:admin] 
        end
        
     
        
    end



end



