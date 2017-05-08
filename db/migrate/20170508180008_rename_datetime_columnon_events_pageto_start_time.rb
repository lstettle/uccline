class RenameDatetimeColumnonEventsPagetoStartTime < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :datetime, :start_date
  end
end
