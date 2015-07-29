class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.timestamps
      t.integer :user_id
      t.integer :course_id
    end
  end
end
