class BuildingLocationsController < ApplicationController
  def new
    @building = Building.find(params[:building_id])
    @building_location = @building.building_locations.build
  end

  def create
    @building = Building.find(params[:building_id])
    @building_location = @building.building_locations.new(params[:building_location])
    if @building_location.save
      redirect_to @building_location.building, notice: 'Successfully created building/location'
    else
      render :new
    end
  end

  def edit
  end
end
