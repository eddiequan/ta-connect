class AddRemainingTeachingHoursToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :remaining_teaching_hours, :integer
  end
end
