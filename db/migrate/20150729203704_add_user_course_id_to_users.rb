class AddUserCourseIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_course_id, :integer
  end
end
