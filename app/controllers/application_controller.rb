class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_login
    unless current_user
      flash[:notice] = "You must be logged in to access this section"
      redirect_to root_path
      return false
    end
  end
end
