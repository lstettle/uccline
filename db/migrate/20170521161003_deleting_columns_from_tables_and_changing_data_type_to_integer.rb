class DeletingColumnsFromTablesAndChangingDataTypeToInteger < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :volunteer, :integer
    remove_column :tickets, :integer, :integer
    change_column :tickets, :price_child, 'integer USING CAST(price_child AS integer)'
  end
end
