class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user
    @logged_in = User.find(session[:user_id]) if session[:user_id]
  end

  def is_logged_in
    return @logged_in if current_user
  end

  helper_method :current_user
end
