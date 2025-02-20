module ApplicationHelper
    
    def current_user
        @user = User.find_by_id(session[:user_id])
        @user
    end

    def logged_in?
        !!current_user
    end

end
