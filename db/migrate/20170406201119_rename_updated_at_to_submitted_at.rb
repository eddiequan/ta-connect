class RenameUpdatedAtToSubmittedAt < ActiveRecord::Migration[5.0]
  def change
  	rename_column :ta_applications, :updated_at, :submitted_at
  end
end
