class ApplicationController < ActionController::Base
  before_action :setup_user
  helper_method :current_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
  def setup_user
    @logged_in = !!session[:user_id]
    if @logged_in
      @logged_in_user = User.find(session[:user_id])
    end
  end
end
