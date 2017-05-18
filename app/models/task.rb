class Task < ApplicationRecord
  belongs_to :user, optional: true
  has_many :locations, through: :event_categories
  has_many :events, through: :event_categories
  has_many :committee_ministries, through: :event_categories
  
end
