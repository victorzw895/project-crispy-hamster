class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password]) && user.company?
      session[:user_id] = user.id
      redirect_to user
    elsif user.present? && user.authenticate(params[:password]) && !user.company?
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error_message] = "Invalid email or password"
      redirect_to login_path # throw away data, and make user login again from scratch
    end
  end

  def destroy
    session[:user_id] = nil
    session[:selected_industry] = nil
    redirect_to login_path
  end

end
