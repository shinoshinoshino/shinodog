class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts.all.order(created_at: 'desc')
  end

  def new
    @post = current_user.posts.new
    @profiles = current_user.plofiles.all
  end

  def create
    @post = current_user.posts.new(post_params)
    @profiles = current_user.plofiles.all
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @profiles = current_user.profiles.all
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:date, :weight, :difference, :profile_id, :user_id)
  end

end
