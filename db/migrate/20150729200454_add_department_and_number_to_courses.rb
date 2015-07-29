class AddDepartmentAndNumberToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :department, :string
    add_column :courses, :number, :integer
  end
end
