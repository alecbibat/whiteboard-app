class RemoveSubscribedCourseIdFromCourseAndUser < ActiveRecord::Migration
  def change
    remove_column :users, :subscribed_course_id
    remove_column :courses, :subscribed_course_id
  end
end
