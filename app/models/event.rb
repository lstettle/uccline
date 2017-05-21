class Event < ApplicationRecord
  belongs_to :user, foreign_key: "volunteer", optional: true
  has_many :event_categories
  has_many :event_donations
  has_many :event_tickets
  has_many :event_tasks
  has_many :locations, through: :locations
  has_many :categories, through: :event_categories
  has_many :tasks, through: :event_tasks
  has_many :committee_ministries, through: :committee_ministries
  has_many :tickets, through: :event_tickets
  has_many :donations, through: :event_donations



end

