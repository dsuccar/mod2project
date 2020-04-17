

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
     
<<<<<<< HEAD
=======

        !!current_user
    end

    def authorized
>>>>>>> 0016d2932f81fbb9df23b3c0a270bed3f3f1a1a7

        !!current_user
    end

    def authorized


        if !logged_in?
            flash["error"] = "You must be logged in"
            redirect_to login_path
        end
    end

    def admin?

      User.find(session[:user_id])[:admin] == true
           
        
    end

        if !logged_in?
            flash["error"] = "You must be logged in"
            redirect_to login_path
        end
    end

    def admin?
        
        User.find(session[:user_id])[:admin] 
     
        
    end



end



