class ArtifactsController < ApplicationController
  before_filter :load_artifactable, only: [:new, :create]

  def new
    @artifact = @artifactable.artifacts.new
  end

  def create
    @artifact = @artifactable.artifacts.new(params[:artifact])
    if @artifact.save
      redirect_to @artifactable, notice: 'Successfully added artifact.'
    else
      render :new
    end
  end

  def show
    @artifact = Artifact.find(params[:id])
  end

  private

  def load_artifactable
    resource, id = request.path.split('/')[1,2]
    @artifactable = resource.singularize.classify.constantize.find(id)
  end
end
