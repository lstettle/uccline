class RemoveColumnsfromTasksTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :created_by, :integer
    remove_column :tasks, :event_id, :integer
    remove_column :tasks, :event_owner, :integer
  end
end
