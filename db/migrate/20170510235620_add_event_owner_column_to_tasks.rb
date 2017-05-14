class AddEventOwnerColumnToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :event_owner, :integer
  end
end
