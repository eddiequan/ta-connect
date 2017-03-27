class AddDeclinedField < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :previously_declined, :boolean
  end
end
