class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :location
      t.datetime :datetime
      t.integer :created_by

      t.timestamps
    end
  end
end
