class CreateEventTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :event_tasks do |t|
      t.integer :event_id
      t.integer :task_id

      t.timestamps
    end
  end
end
