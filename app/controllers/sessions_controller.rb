class SessionsController < ApplicationController
    
    def new
    end

    def create
        puts params[:email]
        user = User.find_by_email(params[:session][:email])
        if user && user.authenticate(params[:session][:password])
            flash[:notice] = "Logged in!"
            session[:user_id] = user.id
            redirect_to root_url
        else
            flash.now.alert = "Invalid email or password"
            redirect_to login_url
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_url
    end 
end
