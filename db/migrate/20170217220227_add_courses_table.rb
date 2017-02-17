class AddCoursesTable < ActiveRecord::Migration[5.0]
  def change
  	create_table :courses do |t|
  		t.string :course_code
  		t.string :description
  	end
  end
end
