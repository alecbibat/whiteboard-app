class AddUserCourseIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :user_course_id, :integer
  end
end
