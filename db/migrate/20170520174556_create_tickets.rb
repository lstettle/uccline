class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.integer :price_adult
      t.string :price_child
      t.string :integer

      t.timestamps
    end
  end
end
