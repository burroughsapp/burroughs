class BuildingLocationsController < ApplicationController
  before_filter :get_building
  before_filter :get_building_location, except: [:new, :create]

  def new
    @building_location = @building.building_locations.build
  end

  def create
    @building_location = @building.building_locations.new(params[:building_location])
    if @building_location.save
      redirect_to @building_location.building, notice: 'Successfully created building location'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @building_location.update_attributes(params[:building_location])
      redirect_to @building_location.building, notice: 'Successfully updated building location'
    else
      render :edit
    end
  end

  def destroy
    @building_location.destroy
    redirect_to @building, notice: 'Successfuly deleted building location'
  end

  private

  def get_building
    @building = Building.find(params[:building_id]) if params[:building_id]
  end

  def get_building_location
    if params[:id]
      @building_location = @building.building_locations.find(params[:id])
    end
  end
end
