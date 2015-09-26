class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :check_user

  private
  def check_user
    if current_user && current_user.signed_in?
      super
    else
      redirect_to new_user_session_path
      flash[:warning] = 'Please log in or create a new account'
    end
  end

end
