class UsersController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update]

  def index
    if params[:query].present?
      @users = User.order(created_at: :desc).search_industry(params[:query])
    else
      @users = User.all.order(created_at: :desc)
    end
  end

  def new
    @user = User.new
  end

  def create
    # @user = User.create user_params not anymore since now we want to log in user right after signing up
    @user = User.new user_params # Set up the user, but not saved yet
    if @user.save # save, returns true if valid or false if not
      session[:user_id] = @user.id # Login after sign up
      redirect_to root_path if @user.save
    else
      render :new
      # redirect_to new_path # not ideal, removes all filled inputs
    end
  end

  def edit
    @user = @current_user # User.find params[:id]
  end

  def update
    @current_user.update user_params
    redirect_to root_path
  end

  def show
    @user = User.find params[:id]
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :tag_line, :about, :logo_image, :banner_image, :more, :password, :password_confirmation)
  end

end
