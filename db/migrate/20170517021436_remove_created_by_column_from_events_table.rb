class RemoveCreatedByColumnFromEventsTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :created_by, :integer
  end
end
