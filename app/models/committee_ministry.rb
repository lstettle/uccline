class CommitteeMinistry < ApplicationRecord
  has_many :tasks, through: :event_categories
  has_many :events, through: :event_categories
  has_many :locations, through: :event_categories
end
