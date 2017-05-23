class AddEventIdColumnToTasksTicketsDonationsTables < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :event_id, :integer
    add_column :tickets, :ticket_id, :integer
    add_column :donations, :donation_id, :integer
  end
end
