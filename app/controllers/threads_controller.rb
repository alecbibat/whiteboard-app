class ThreadsController < ApplicationController

  def create
    # handle new thread submission
    @course = Course.find(params[:course_id])
    @thread = @course.threads.build(thread_params)
    @thread.user = User.first()

    if @thread.save
      redirect_to course_path(@course)
    else
      redirect_to root_path
    end
  end

  def thread_params
    params.require(:thread).permit!
  end

end