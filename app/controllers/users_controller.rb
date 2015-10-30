class UsersController < ApplicationController

    def new
        @user = User.new
    end 

    def index
        @users = User.all
    end

    def edit
        @user = User.find(params[:id])
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_url
        else
           redirect_to signup_url 
        end
    end

    def update
        @user = User.find(params[:id])
        user = User.find_by_email(current_user.email).try(:authenticate, params[:current_password])
        if user && @user.update_attributes(params[:user])
            redirect_to "/users"
        else
            flash.now[:error] = "Incorrect Current Password" unless user
            redirect_to "/users"
        end
    end

    private

    def user_params
        params.require(:user).permit!
    end 
end
