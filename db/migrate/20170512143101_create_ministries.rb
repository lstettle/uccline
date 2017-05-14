class CreateMinistries < ActiveRecord::Migration[5.0]
  def change
    create_table :ministries do |t|
      t.string :name
      t.integer :member

      t.timestamps
    end
  end
end
