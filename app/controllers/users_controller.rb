class UsersController < ApplicationController

    before_action :redirect_if_not_logged_in, only: [:home]

    def home
        @user = User.find_by(id: params[:id])
    end

    def new
        @user = User.new
    end

    def create
        if params[:user][:password] == params[:user][:password_confirmation]
            @user = User.create(user_params)
            session[:user_id] = @user.id
        else
            redirect_to new_user_path
        end

        
    end

    private
    def user_params
        params.require(:user).permit(:name, :password)
    end

end
