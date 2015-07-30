class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    # handle individual course pages
    if session[:user] == nil
      flash[:error] = "You must be logged in to view a course."
      redirect_to courses_path
    else
    @course = Course.find(params[:id])
    @post = Post.new()
    end
  end

  def new
    # handle showing the 'register a new course' form
    @course = Course.new()
  end

  def create
    # handle 'register a new course' form submission
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = "You've registered a new course!"
      redirect_to courses_path
    else
      render :new
    end
  end

  def course_params
    params.require(:course).permit!
  end
end