class FriendsController < ApplicationController
  before_action :authenticate_user!

  def index
    @friends = current_user.friends.all
  end

  def new
  end

  def create
    @friend = current_user.friends.new(friend_params)
    @friend.save
    redirect_to friends_path
  end

  def destroy
    @friend = current_user.friends.find(params[:id])
    @friend.destroy
    redirect_to friends_path
  end

  def edit
    @friend = current_user.friends.find(params[:id])
  end

  def update
    @friend = current_user.friends.find(params[:id])
    @friend.update(friend_params)
    redirect_to friends_path
  end

  private
    def friend_params
      params.require(:friend).permit(:name, :breed, :gender, :owner, :coat, :feature, :user_id)
    end
end
