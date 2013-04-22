class ExistenceLocationsController < ApplicationController
  before_filter :get_existence
  before_filter :get_existence_location, except: [:new, :create]

  def new
    @existence_location = @existence.existence_locations.build
  end

  def create
    @existence_location = @existence.existence_locations.new(params[:existence_location])
    if @existence_location.save
      redirect_to @existence_location.existence, notice: 'Successfully created existence/location'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @existence_location.update_attributes(params[:existence_location])
      redirect_to @existence_location.existence, notice: 'Successfully updated existence/location'
    else
      render :edit
    end
  end

  def destroy
    @existence_location.destroy
    redirect_to @existence, notice: 'Successfuly deleted existence/location'
  end

  private

  def get_existence
    @existence = Existence.find(params[:existence_id]) if params[:existence_id]
  end

  def get_existence_location
    if params[:id]
      @existence_location = @existence.existence_locations.find(params[:id])
    end
  end
end
