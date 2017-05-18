class AddingColumnsToEventCategoryTable < ActiveRecord::Migration[5.0]
  def change
    add_column :event_categories, :task_id, :integer
    add_column :event_categories, :committee_ministry_id, :integer
    add_column :event_categories, :location_id, :integer
  end
end
