class ResourcesController < ApplicationController
  def index
  	@course = Course.find(params[:course_id])
  end

  def new
  	@course = Course.find(params[:course_id])
  	@resource = Resource.new()
  end

  def create
  end
end