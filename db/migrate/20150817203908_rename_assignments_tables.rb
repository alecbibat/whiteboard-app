class RenameAssignmentsTables < ActiveRecord::Migration
  def change
  	rename_table :assignments_tables, :assignments
  end
end
