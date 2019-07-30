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
    elsif params[:query].present? || session[:selected_industry].present?
      @posts = Post.order(created_at: :desc).search_industry(params[:query])
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

  private
  def post_params
    params.require(:post).permit(:query, :user_id, :title, :content, :media, :content_type)
  end

end
