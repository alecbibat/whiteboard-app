class WhiteboardsController < ApplicationController
  def show
  end

  def index
    @course = Course.find(params[:course_id])
    redirect_to 'https://sketch.io/sketchpad/'
    # this should eventually be
    # mapped to whiteboard#show
  end
end