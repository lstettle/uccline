class AddingColumnToCommitteeMinistryTable < ActiveRecord::Migration[5.0]
  def change
    add_column :committee_ministries, :name, :string
    add_column :committee_ministries, :c_or_m, :string
  end
end
