class RenameColumnsInTicketsDonationsTables < ActiveRecord::Migration[5.0]
  def change
    rename_column :tickets, :ticket_id, :event_id
    rename_column :donations, :donation_id, :event_id
  end
end
