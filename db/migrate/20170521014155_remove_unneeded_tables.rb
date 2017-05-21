class RemoveUnneededTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :committees
    drop_table :ministries
    drop_table :event_locations
    drop_table :event_owners

  end
end
