class EstablishmentsController < ApplicationController
  def index
    @establishments = Establishment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @establishments }
    end
  end

  def show
    @establishment = Establishment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @establishment }
    end
  end

  def new
    @establishment = Establishment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @establishment }
    end
  end

  def edit
    @establishment = Establishment.find(params[:id])
  end

  def create
    @establishment = Establishment.new(params[:establishment])

    respond_to do |format|
      if @establishment.save
        format.html { redirect_to establishments_url, notice: 'Successfully created establishment.' }
        format.json { render json: @establishment, status: :created, location: @establishment }
      else
        format.html { render action: "new" }
        format.json { render json: @establishment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @establishment = Establishment.find(params[:id])

    respond_to do |format|
      if @establishment.update_attributes(params[:establishment])
        format.html { redirect_to @establishment, notice: 'Establishment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @establishment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @establishment = Establishment.find(params[:id])
    @establishment.destroy

    respond_to do |format|
      format.html { redirect_to establishments_url }
      format.json { head :no_content }
    end
  end
end
