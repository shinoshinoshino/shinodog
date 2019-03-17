class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    @profiles = current_user.profiles.all
  end

  def new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.save
    redirect_to profiles_path
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to profiles_path
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)
    redirect_to profiles_path
  end

  private
    def profile_params
      params.require(:profile).permit(:name, :birthday, :gender, :birthweight, :birthplace, :walk, :food, :trick, :character, :operation, :test, :history, :illness)
    end

end
