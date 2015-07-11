class AddCoursesTable < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :abbreviation
      t.timestamps
    end
  end
end
