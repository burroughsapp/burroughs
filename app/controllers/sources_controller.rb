class SourcesController < ApplicationController
  before_filter :load_sourceable

  def new
    @source = @sourceable.sources.new
  end

  def create
    @source = @sourceable.sources.new(params[:source])
    if @source.save
      redirect_to @sourceable, notice: 'Successfully added source.'
    else
      render :new
    end
  end

  private

  def load_sourceable
    resource, id = request.path.split('/')[1,2]
    @sourceable = resource.singularize.classify.constantize.find(id)
  end
end
