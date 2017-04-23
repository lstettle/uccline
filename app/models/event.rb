class Event < ApplicationRecord
  belongs_to :user, foreign_key: "created_by", optional: true
  has_many :tasks
  has_many :event_categories
  has_many :categories, through: :event_categories
end
