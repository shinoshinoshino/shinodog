class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts.all.order(created_at: 'desc')
  end

  def new
    @post = current_user.posts.new
    @profiles = current_user.profiles.all
  end

  def create
    @post = Post.new(post_params)
    @profiles = Profile.all
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @profiles = Profile.all
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:date, :weight, :difference, :profile_id, :user_id)
  end

end
