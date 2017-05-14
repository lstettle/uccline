class AddColumnsToTaskTableStartTimeEndTime < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :start_time, :time
    add_column :tasks, :end_time, :time
  end
end
