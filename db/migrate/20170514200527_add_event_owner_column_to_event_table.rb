class AddEventOwnerColumnToEventTable < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :event_owner, :integer
  end
end
