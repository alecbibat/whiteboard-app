class AssignmentsController < ApplicationController
  def index
  	@date = params[:format]
  	@course = Course.find(params[:course_id])
  end

def new
  @assignment = Assignment.new()
end

  def create
    @assignment = Assignment.new(assignment_params)

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