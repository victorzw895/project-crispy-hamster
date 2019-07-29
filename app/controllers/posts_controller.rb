class PostsController < ApplicationController

  before_action :check_for_login, :only => [:index, :show, :new]

  def index
    @posts = Post.all.order(created_at: :desc)
    # raise 'hell'
  end

  def show
  end

  def new
  end
end
