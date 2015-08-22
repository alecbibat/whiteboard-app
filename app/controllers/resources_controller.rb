class ResourcesController < ApplicationController
  def index
  	@course = Course.find(params[:course_id])
  end

  def new
  	@course = Course.find(params[:course_id])
  	@resource = Resource.new()
  end

  def create
  	@resource = Resource.new(resource_params)
  	@resource.course_id = params[:course_id]

  	if @resource.save
  		flash[:notice] = "Resource added!"
  		redirect_to root_path
  	else
  		flash[:error] = "Something is wrong."
  		render :new
  	end
  end

  private

  def resource_params
  	params.require(:resource).permit!
  end
end