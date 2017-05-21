class RenameColumnsOnEventsTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :price_adult, :location_id
    rename_column :events, :price_child, :committee_ministry_id
  end
end
