class PostsController < ApplicationController

  before_action :check_for_login, :only => [:index, :show, :new]
  before_action :check_for_company, :only => [:new, :create]

  # def index
  #   if params[:query].present?
  #     @posts = Post.order(created_at: :desc).search_industry(params[:query])
  #   else
  #     @posts = Post.all.order(created_at: :desc)
  #   end
  #   # raise 'hell'
  # end

  def index
    if params[:query] != nil
      # raise 'hell'
      session[:selected_industry] = params[:query]
    end
    if params[:query] == 'All' || session[:selected_industry] == 'All'
      @posts = Post.all.order(created_at: :desc)
    elsif params[:query].present?
      @posts = Post.order(created_at: :desc).search_industry(params[:query])
    elsif session[:selected_industry].present?
      @posts = Post.order(created_at: :desc).search_industry(session[:selected_industry])
    else
      @posts = Post.all.order(created_at: :desc)
    end

    # raise 'hell'
  end


  def show
    @post = Post.find params[:id]
  end

  def new
    @post = Post.new
  end

  def create
    # raise 'hell'

    post = Post.create post_params
    if params[:file].present?
      # Then call Cloudinary's upload method, passing in the file in params
      req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image
      # transformation methods.
      post.image = req["public_id"]
      post.save
    end
    redirect_to posts_path
  end


  private
  def post_params
    params.require(:post).permit(:query, :user_id, :title, :content, :media, :content_type
      # , user_ids:[]
    )
  end

end
