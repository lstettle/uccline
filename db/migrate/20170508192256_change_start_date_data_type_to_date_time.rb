class ChangeStartDateDataTypeToDateTime < ActiveRecord::Migration[5.0]
  def change
    change_column :events, :start_date, :datetime
  end
end
