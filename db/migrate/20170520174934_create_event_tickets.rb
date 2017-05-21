class CreateEventTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :event_tickets do |t|
      t.integer :event_id
      t.integer :ticket_id

      t.timestamps
    end
  end
end
