class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include ApplicationHelper

  def redirect_if_not_logged_in
    redirect_to '/users/new' if !logged_in?
  end

end
