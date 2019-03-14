class MedicinesController < ApplicationController
  def index
    @medicines = Medicine.all.order(created_at: 'desc')
  end

  def new
    @medicine = Medicine.new
    @profiles = Profile.all
  end

  def create
    @medicine = Medicine.new(medicine_params)
    @profiles = Profile.all
    if @medicine.save
      redirect_to medicines_path
    else
      render 'new'
    end
  end

  def destroy
    @medicine = Medicine.find(params[:id])
    @profiles = Profile.all
    @medicine.destroy
    redirect_to medicines_path
  end

  def edit
    @medicine = Medicine.find(params[:id])
    @profiles = Profile.all
  end

  def update
    @medicine = Medicine.find(params[:id])
    @profiles = Profile.all
    @medicine.update(medicine_params)
    redirect_to medicines_path
  end

  private
    def medicine_params
      params.require(:medicine).permit(:drug, :date, :name, :profile_id)
    end

end
