class Task < ApplicationRecord
  belongs_to :user, optional: true
  has_many :locations, through: :events
  has_many :events, through: :event_tasks
  has_many :committee_ministries, through: :events
  has_many :categories, through: :event_categories
  
end
