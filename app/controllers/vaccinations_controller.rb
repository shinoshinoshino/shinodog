class VaccinationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @vaccinations = current_user.vaccinations.all.order(created_at: 'desc')
  end

  def new
  end

  def create
    @vaccination = current_user.vaccinations.new(vaccination_params)
    @vaccination.save
    redirect_to vaccinations_path
  end

  def destroy
    @vaccination = current_user.vaccinations.find(params[:id])
    @vaccination.destroy
    redirect_to vaccinations_path
  end

  def edit
    @vaccination = current_user.vaccinations.find(params[:id])
  end

  def update
    @vaccination = current_user.vaccinations.find(params[:id])
    @vaccination.update(vaccination_params)
    redirect_to vaccinations_path
  end

  private
    def vaccination_params
      params.require(:vaccination).permit(:date, :rabies, :vaccine, :filaria, :flea, :user_id)
    end

end
