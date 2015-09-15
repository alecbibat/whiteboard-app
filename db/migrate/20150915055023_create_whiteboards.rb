class CreateWhiteboards < ActiveRecord::Migration
  def change
    create_table :whiteboards do |t|
    	t.timestamps
    end
  end
end
