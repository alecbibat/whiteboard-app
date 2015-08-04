class SubscribedCoursesController < ApplicationController

  def create
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
    @subscribed_course = SubscribedCourse.find(params[:format])
    @subscribed_course.delete

    # find what's in the params, make sure to delete the subscribed_courses object, not an attribute
    redirect_to root_path

    # @subscribed_course = Subscribed_course.find_by
    # find entry where user_id and course_id are some value
    # how to find_by specifying two parameters
    # if @subscribed_course.delete
    # flash notice, redirect
    # else
    # flash error, redirect
    # end
  end

end