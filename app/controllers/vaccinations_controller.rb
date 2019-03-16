class VaccinationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @vaccinations = Vaccination.all.order(created_at: 'desc')
  end

  def new
  end

  def create
    @vaccination = Vaccination.new(vaccination_params)
    @vaccination.save
    redirect_to vaccinations_path
  end

  def destroy
    @vaccination = Vaccination.find(params[:id])
    @vaccination.destroy
    redirect_to vaccinations_path
  end

  def edit
    @vaccination = Vaccination.find(params[:id])
  end

  def update
    @vaccination = Vaccination.find(params[:id])
    @vaccination.update(vaccination_params)
    redirect_to vaccinations_path
  end

  private
    def vaccination_params
      params.require(:vaccination).permit(:date, :rabies, :vaccine, :filaria, :flea)
    end

end
