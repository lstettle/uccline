class Location < ApplicationRecord
  has_many :events, through: :event_categories
  has_many :committee_ministries, through: :event_categories
  has_many :tasks, through: :event_categories
end
