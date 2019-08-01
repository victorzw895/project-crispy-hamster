class UsersController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update]
  before_action :check_for_company, :only => [:edit, :update]
  # before_action :check_for_admin, :only => [:show]

  def index
    # raise 'hell'
    if params[:query] != nil
      # raise 'hell'
      session[:selected_industry] = params[:query]
    end
    if params[:query] == 'All' || session[:selected_industry] == 'All'
      @users = User.where(:company => true).order(created_at: :desc)
    elsif params[:query].present?
      @users = User.order(created_at: :desc).search_industry(params[:query])
    elsif session[:selected_industry].present?
      @users = User.order(created_at: :desc).search_industry(session[:selected_industry])
    else
      @users = User.where(:company => true).order(created_at: :desc)
    end

  end

  def new
    @user = User.new
  end

  def create
    # raise 'hell'
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
    # raise "hell"

    if params[:logo].present?
      req = Cloudinary::Uploader.upload(params[:logo])
      @current_user.logo_image = req["public_id"]
    end

    if params[:banner].present?
      req = Cloudinary::Uploader.upload(params[:banner])
      @current_user.banner_image = req["public_id"]
    end

    # industry = Industry.new industry_params

    industry = Industry.new "name"=>params[:industry_name]
    # industry.save

    # raise 'hell'
    @current_user.update user_params

    unless params[:industry_name].empty?
      @current_user.industries << industry
    end

    redirect_to root_path


  end

  def show
    @user = User.find params[:id]
    @posts = Post.where(:user_id => @user.id).order(created_at: :desc)
    # @current_user if @current_user.
    # if @current_user.admin? || !@current_user.company?
    #   @user = nil
    #   @posts = nil
    #   redirect_to users_path
    # end
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :tag_line, :about, :logo_image, :banner_image, :more, :password, :password_confirmation, :industry_name, industry_ids:[])
  end
end
