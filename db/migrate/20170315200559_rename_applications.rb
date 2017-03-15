class RenameApplications < ActiveRecord::Migration[5.0]
  def change
  	rename_table :applications, :ta_applications
  end
end
