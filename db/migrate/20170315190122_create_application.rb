class CreateApplication < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
    	t.string 	:details
    	t.integer	:user_id
    	t.integer	:course_id
    	t.boolean	:previous_ta_experience
    	t.integer	:preferences
    end
  end
end
