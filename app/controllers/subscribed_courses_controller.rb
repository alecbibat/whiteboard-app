class SubscribedCoursesController < ApplicationController

  def create
    binding.pry
    @course = Course.find(params[:format])
    @user = session[:user]
    @subscribed_course = @user.subscribed_courses.new()
    @subscribed_course.course_id = @course.id

    if @subscribed_course.save
      flash[:notice] = "You've successfully subscribed!"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong!"
      redirect_to root_path
    end
  end

  def destroy
  end

end