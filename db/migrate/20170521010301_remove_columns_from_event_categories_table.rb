class RemoveColumnsFromEventCategoriesTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :event_categories, :task_id, :integer
    remove_column :event_categories, :committee_ministry_id, :integer
    remove_column :event_categories, :location_id, :integer
  end
end
