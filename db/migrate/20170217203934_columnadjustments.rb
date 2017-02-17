class Columnadjustments < ActiveRecord::Migration[5.0]
  def change
	remove_column :users, :phone_number, :integer
	add_column :users, :phone_number, :string

  	change_table :users do |t|
  		t.rename :email, :utorid
  		t.rename :studentnumber, :student_number
  	end
  end
end
