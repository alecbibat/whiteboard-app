class AddIdsToComments < ActiveRecord::Migration
  def change
    add_column :comments, :user_id, :integer
    add_column :comments, :thread_id, :integer
  end
end
