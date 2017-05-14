class Event < ApplicationRecord
  belongs_to :user, foreign_key: "created_by", optional: true
  belongs_to :user, foreign_key: "event_owner", optional: true
  belongs_to :user, foreign_key: "volunteer", optional: true
  has_many :tasks
  has_many :committees
  has_many :ministries
  has_many :event_categories
  has_many :categories, through: :event_categories


end

