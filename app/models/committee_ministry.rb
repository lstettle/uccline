class CommitteeMinistry < ApplicationRecord
  belongs_to :user
  has_many :events, through: :events

end
