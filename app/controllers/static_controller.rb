class StaticController < ApplicationController
  def index
  	@mycoursespage = true
  end

  def calendar
  	@mycoursespage = false
  end
end