class LocationsController < ApplicationController
  def index
    @locations=Location.all
  end

  def show
    @location= Location.find(params[:id])
  end

  def edit
    @location=Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    @location.update_attributes(params[:location])
    redirect_to locations_path
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end

  def new 
    @location=Location.new
  end

  def create
    @location = Location.new(params[:location])
    @location.save!
    redirect_to locations_path
  end
end
