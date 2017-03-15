class DropTaAssignment < ActiveRecord::Migration[5.0]
  def change
  	drop_table :ta_applications
  end
end
