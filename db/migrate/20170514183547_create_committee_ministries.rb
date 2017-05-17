class CreateCommitteeMinistries < ActiveRecord::Migration[5.0]
  def change
    create_table :committee_ministries do |t|
      t.integer :committee_id
      t.integer :ministry_id

      t.timestamps
    end
  end
end
