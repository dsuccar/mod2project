 class SessionsController < ApplicationController

    def login
        #loads the login page
    end
    
    def process_login
        #precesses the form so that the user can login
    
        # check if the username has been assigned  in the database
        user= User.find_by(name: params[:name])
    
        if user && user.password == params[:password]


            session[:user_id] = user.id
            redirect_to dogs_path
    
        else
            # if not, show an error and redisplay login form
            flash["error"] = "No user found with that name and password"
            render :login
        end
    end
    
    def logout
    
        session.delete(:user_id)
        redirect_to login_path
    
    end
    
    
    
end
