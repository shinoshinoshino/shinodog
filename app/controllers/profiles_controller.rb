class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    @profiles = current_user.pofiles.all.order(created_at: 'desc')
  end

  def new
  end

  def create
    @profile = current_user.pofiles.new(profile_params)
    @profile.save
    redirect_to profiles_path
  end

  def destroy
    @profile = current_user.pofiles.find(params[:id])
    @profile.destroy
    redirect_to profiles_path
  end

  def edit
    @profile = current_user.pofiles.find(params[:id])
  end

  def update
    @profile = current_user.pofiles.find(params[:id])
    @profile.update(profile_params)
    redirect_to profiles_path
  end

  private
    def profile_params
      params.require(:profile).permit(:name, :birthday, :gender, :birthweight, :birthplace, :walk, :food, :trick, :character, :operation, :test, :history, :illness, :user_id)
    end

end
