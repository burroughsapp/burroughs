class ArtifactsController < ApplicationController
  before_filter :load_artifactable, except: [:show]
  before_filter :load_artifact, except: [:new]

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
  end

  def edit
  end

  def update
    if @artifact.update_attributes(params[:artifact])
      redirect_to @artifactable, notice: 'Successfully updated artifact.'
    else
      render :edit
    end
  end

  def destroy
    @artifact.destroy
    redirect_to @artifactable, notice: 'Successfully deleted artifact.'
  end

  private

  def load_artifact
    @artifact = Artifact.find(params[:id])
  end

  def load_artifactable
    resource, id = request.path.split('/')[1,2]
    @artifactable = resource.singularize.classify.constantize.find(id)
  end
end
