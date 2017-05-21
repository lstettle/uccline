class CreateDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :donations do |t|
      t.string :description
      t.integer :amount
      t.integer :quantity

      t.timestamps
    end
  end
end
