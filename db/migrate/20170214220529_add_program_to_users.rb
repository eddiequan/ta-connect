class AddProgramToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :studentnumber, :integer
  	add_column :users, :family_name, :string
  	add_column :users, :given_name, :string
  	add_column :users, :program, :string
  	add_column :users, :year, :integer
  	add_column :users, :previous_ta_experience, :boolean
  	add_column :users, :phone_number, :integer
  	add_column :users, :work_status, :boolean
  	add_column :users, :work_status_explain, :string
  	add_column :users, :department, :string
  	add_column :users, :department_explanation, :string
  	add_column :users, :date_of_application, :datetime
  end
end
