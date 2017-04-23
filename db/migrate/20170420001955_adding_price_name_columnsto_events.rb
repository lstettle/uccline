class AddingPriceNameColumnstoEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :name, :string
    add_column :events, :price_adult, :integer
    add_column :events, :price_child, :integer

  end
end
