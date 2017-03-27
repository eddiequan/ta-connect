class AddTimestampsToApplications < ActiveRecord::Migration[5.0]
  def change
  	add_column :ta_applications, :created_at, :datetime
  	add_column :ta_applications, :updated_at, :datetime
  end
end
