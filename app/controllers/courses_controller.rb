class CoursesController < ApplicationController
  def index
    binding.pry
    @courses = Course.all
  end

  def new
    # handle showing the 'register a new course' form
    @course = Course.new()
  end

  def create
    # handle 'register a new course' form submission
  end
end