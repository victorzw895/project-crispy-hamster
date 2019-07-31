class PostsController < ApplicationController

  before_action :check_for_login, :only => [:index, :show, :new]

  # def index
  #   if params[:query].present?
  #     @posts = Post.order(created_at: :desc).search_industry(params[:query])
  #   else
  #     @posts = Post.all.order(created_at: :desc)
  #   end
  #   # raise 'hell'
  # end

  def index
    if params[:query] == 'All'
      @posts = Post.all.order(created_at: :desc)
    elsif params[:query].present?
      @posts = Post.order(created_at: :desc).search_industry(params[:query])
    elsif session[:selected_industry].present?
      @posts = Post.order(created_at: :desc).search_industry(session[:selected_industry])
    else
      @posts = Post.all.order(created_at: :desc)
    end
    if params[:query] != nil
      # raise 'hell'
      session[:selected_industry] = params[:query]
    end
    # raise 'hell'
  end

  def show
  end

  def new
  end

  # def create
  #   post = Post.create post_params
  #   if params[:file].present?
  #     # Then call Cloudinary's upload method, passing in the file in params
  #     req = Cloudinary::Uploader.upload(params[:file])
  #     # Using the public_id allows us to use Cloudinary's powerful image
  #     # transformation methods.
  #     animal.image = req["public_id"]
  #     animal.save
  #   end
  #   redirect_to posts_path
  # end


  private
  def post_params
    params.require(:post).permit(:query, :user_id, :title, :content, :media, :content_type, user_ids:[])
  end

end
