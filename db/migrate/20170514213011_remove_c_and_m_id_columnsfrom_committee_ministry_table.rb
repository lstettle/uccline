class RemoveCAndMIdColumnsfromCommitteeMinistryTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :committee_ministries, :committee_id, :integer
    remove_column :committee_ministries, :ministry_id, :integer
  end
end
