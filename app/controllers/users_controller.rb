class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    # @user = User.find user_params
  end

  def new
  end

  def edit
  end

  private
  def user_params
  end
end
