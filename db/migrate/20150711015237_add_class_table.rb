class AddClassTable < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string :name
      t.string :abbreviation
      t.timestamps
    end
  end
end
