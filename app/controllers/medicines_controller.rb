class MedicinesController < ApplicationController
  before_action :authenticate_user!

  def index
    @medicines = current_user.medicines.all.order(created_at: 'desc')
  end

  def new
    @medicine = current_user.medicines.new
    @profiles = current_user.profiles.all
  end

  def create
    @medicine = current_user.medicines.new(medicine_params)
    @profiles = current_user.profiles.all
    if @medicine.save
      redirect_to medicines_path
    else
      render 'new'
    end
  end

  def destroy
    @medicine = current_user.medicines.find(params[:id])
    @profiles = current_user.profiles.all
    @medicine.destroy
    redirect_to medicines_path
  end

  def edit
    @medicine = current_user.medicines.find(params[:id])
    @profiles = current_user.profiles.all
  end

  def update
    @medicine = current_user.medicines.find(params[:id])
    @profiles = current_user.profiles.all
    @medicine.update(medicine_params)
    redirect_to medicines_path
  end

  private
    def medicine_params
      params.require(:medicine).permit(:drug, :date, :name, :profile_id :user_id)
    end

end
