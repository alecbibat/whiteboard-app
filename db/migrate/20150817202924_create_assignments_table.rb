class CreateAssignmentsTable < ActiveRecord::Migration
  def change
    create_table :assignments_tables do |t|
    	t.integer :date
    	t.text :description
    	t.integer :course_id
    	t.timestamps
    	t.string :title
    	t.string :due_date
    end
  end
end
