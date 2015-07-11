class AddIdsToThreads < ActiveRecord::Migration
  def change
    add_column :threads, :user_id, :integer
    add_column :threads, :course_id, :integer
  end
end
