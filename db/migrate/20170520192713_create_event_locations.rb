class CreateEventLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :event_locations do |t|
      t.integer :event_id
      t.string :location_id
      t.string :integer

      t.timestamps
    end
  end
end
