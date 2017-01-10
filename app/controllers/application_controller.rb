class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  private

  def current_user
    session[:user_id]
  end

  def authorize_user
    if !logged_in?
      redirect_to root_path
    end
  end

  def logged_in?
    !!session[:user_id]
  end
end
