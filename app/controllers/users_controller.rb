class UsersController < ApplicationController
    skip_before_action :authorization, only: [:new, :create]


    def index
        @users = User.all

    end

    def show
        @user = User.find(params[:id])
        @pagy, @reviews = pagy(@user.reviews, items: 3)
    end


    def new
        @user = User.create
    end

    def create
        user = User.create(user_params)
        
        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:user_errors] = user.errors.full_messages
            redirect_to new_user_path 
        end
    end


    private 

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

end
