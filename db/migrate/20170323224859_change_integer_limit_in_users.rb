class ChangeIntegerLimitInUsers < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :student_number, :integer, limit: 8
  end
end
