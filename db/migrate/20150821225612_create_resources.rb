class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
    	t.timestamps
    	t.string :photo
    	t.string :category
    	t.text :body
    	t.integer :course_id
    end
  end
end
