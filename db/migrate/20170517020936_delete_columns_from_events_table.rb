class DeleteColumnsFromEventsTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :location, :string
    remove_column :events, :event_owner, :integer
    remove_column :events, :start_time, :time 
    remove_column :events, :end_time, :time

  end
end
