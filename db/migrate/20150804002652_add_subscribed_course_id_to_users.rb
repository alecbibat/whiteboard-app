class AddSubscribedCourseIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :subscribed_course_id, :integer
    add_column :courses, :subscribed_course_id, :integer
  end
end
