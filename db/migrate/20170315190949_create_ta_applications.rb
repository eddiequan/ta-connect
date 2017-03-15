class CreateTaApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :ta_applications do |t|

      t.timestamps
    end
  end
end
