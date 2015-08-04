class CreateSubscribedCourses < ActiveRecord::Migration
  def change
    create_table :subscribed_courses do |t|
      t.integer :user_id
      t.integer :course_id
      t.timestamps
    end
  end
end
