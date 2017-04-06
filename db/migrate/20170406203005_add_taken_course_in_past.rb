class AddTakenCourseInPast < ActiveRecord::Migration[5.0]
  def change
  	add_column :ta_applications, :taken_in_past, :boolean
  end
end
