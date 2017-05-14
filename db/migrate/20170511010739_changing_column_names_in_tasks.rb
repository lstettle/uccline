class ChangingColumnNamesInTasks < ActiveRecord::Migration[5.0]
  def change
    rename_column :tasks, :user_id, :created_by
    rename_column :tasks, :volunteer_id, :volunteer
  end
end
