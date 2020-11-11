class SessionsController < ApplicationController
skip_before_action :authorization, only: [:new, :create]


    def destroy
        session.delete(:user_id)
        
        redirect_to root_path
    end

    # def logout
    #     session.delete(:user_id)
        
    #     redirect_to businesses_path
    # end

    def new 

    end 


    def create
        user = User.find_by(email: params[:session][:email]) 

        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:error] = "Email or Password was incorrect"
            redirect_to new_login_path
        end
    end
end