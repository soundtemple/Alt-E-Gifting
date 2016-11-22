class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    User.find_by(id: session[:user_id])
  end
  helper_method :current_user # also make this a helper method for use in views

  def logged_in?
    !!current_user
  end
  helper_method :logged_in?

  # optionally define more methods as you see fit
  def authenticate
    redirect_to login_path unless logged_in?
  end

end
