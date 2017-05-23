class DeletingEventTicketsEventTasksEventDonationsTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :event_tickets
    drop_table :event_tasks
    drop_table :event_donations
  end
end
