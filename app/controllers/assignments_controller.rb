class AssignmentsController < ApplicationController
  include ApplicationHelper

  def index
    # find all assignments associated
    # with the course that the calendar
    # is associated with
    @course = Course.find(params[:course_id])
    @assignments = @course.assignments.all
  end

def new
  @assignment = Assignment.new()
end

def show
  @course = Course.find(params[:course_id])
  @raw_date = params[:id]
  @date = remove_dashes(@raw_date).to_i
  @assignments = Assignment.where(:date=>(@date),:course_id=>(@course.id))
end

  def create
    @assignment = Assignment.new(assignment_params)
    binding.pry
    @assignment_course = session[:user].subscribed_courses.find(params[:course_id])
    @assignment.course_id = @assignment_course.course_id
    if @assignment.save
      flash[:notice] = 'Assignment saved!'
      redirect_to root_path
    else
      flash[:error] = 'Something is wrong!'
      redirect_to root_path
    end
  end

private

  def assignment_params
    params.require(:assignment).permit!
  end

end