class CalendarController < ApplicationController
  def show
    @mycoursespage = false
    @course = Course.find(params[:format])
  end
end