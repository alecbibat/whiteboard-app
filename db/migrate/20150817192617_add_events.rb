class AddEvents < ActiveRecord::Migration
  def change
  	create_table :events do |t|
  		t.integer :time
  		t.text :description
  		t.string :title
  		t.timestamps
  	end
  end
end
