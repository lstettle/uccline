class CreateEventDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :event_donations do |t|
      t.integer :event_id
      t.integer :donation_id

      t.timestamps
    end
  end
end
