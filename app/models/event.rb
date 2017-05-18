class Event < ApplicationRecord
  belongs_to :user, foreign_key: "volunteer", optional: true
  has_many :tasks, through: :event_categories
  has_many :committee_ministries, through: :event_categories
  has_many :event_categories
  has_many :locations, through: :event_categories
  has_many :categories, through: :event_categories


end

