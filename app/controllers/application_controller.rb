class ApplicationController < ActionController::Base


# FOR SESSION ##################################
  before_action :fetch_user

  private
  # Set up a @current_user instance variable if we can find a user_id in this session.
  def fetch_user
    @current_user = User.find_by :id => session[:user_id] if session[:user_id].present? # returns nil if false
    session[:user_id] = nil unless @current_user.present?
  end
  
  def check_for_login
    redirect_to login_path unless @current_user.present?
  end
  #
  # def check_for_admin
  #   redirect_to root_path unless @current_user.present? && @current_user.admin?
  # end

end
