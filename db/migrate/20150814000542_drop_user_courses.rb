class DropUserCourses < ActiveRecord::Migration
  def change
  	drop_table :user_courses
  end
end
