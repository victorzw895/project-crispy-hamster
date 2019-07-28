class SessionController < ApplicationController
  def new
  end

  def create
    @user = User.find_by :email => params[:email]
    if @user.save # save, returns true if valid or false if not
      session[:user_id] = @user.id # Login after sign up
      redirect_to root_path
    else
      render :new
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end
