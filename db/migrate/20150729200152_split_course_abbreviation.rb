class SplitCourseAbbreviation < ActiveRecord::Migration
  def change
    remove_column :courses, :abbreviation
  end
end
