class ChangeCategoryNameDataTypeToString < ActiveRecord::Migration[5.0]
  def change
    change_column :categories, :name, :string
  end
end
