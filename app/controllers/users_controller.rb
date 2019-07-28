class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
  end

  def edit
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :tag_line, :about, :logo_image, :banner_image, :more)
  end

end
