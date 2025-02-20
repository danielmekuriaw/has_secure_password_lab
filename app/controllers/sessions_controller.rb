class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by_name(params[:user][:name])

        if @user && @user.authenticate(params[:user][:password])
            flash[:message] = "Successfully logged in!"
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to new_user_path
        end

    end

    def destroy
        session.clear
        redirect_to login_path
    end
end
