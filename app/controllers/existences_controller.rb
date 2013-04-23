class ExistencesController < ApplicationController

  before_filter :find_model

  def new
    establishment = Establishment.find(params[:establishment_id])
    @existence = establishment.existences.new
  end

  def create
    establishment = Establishment.find(params[:establishment_id])
    @existence = establishment.existences.new(params[:existence])

    if @existence.save
      redirect_to establishment, notice: 'Successfully added existence.'
    else
      render :new
    end
  end

  def update
    if @existence.update_attributes(params[:existence])
      redirect_to @existence.establishment, notice: 'Successfully updated existence.'
    else
      render :edit
    end
  end

  def destroy
    establishment = Establishment.find(params[:establishment_id])
    establishment.existences.destroy(params[:id])
    redirect_to establishment, notice: 'Successfully deleted existence.'
  end

  private
  def find_model
    @existence = Existence.find(params[:id]) if params[:id]
  end
end