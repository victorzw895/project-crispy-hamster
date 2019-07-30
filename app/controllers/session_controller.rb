class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user
    else
      flash[:error_message] = "Invalid email or password"
      redirect_to login_path # throw away data, and make user login again from scratch
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end
