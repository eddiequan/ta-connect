class AddDefaultValueToRemainingTeachingHours < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :remaining_teaching_hours, 0
  end
end
