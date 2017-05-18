class User < ApplicationRecord
  has_many :tasks, through: :event_categories
  has_many :events, through: :event_categories
  has_many :committees
  has_many :ministries
  has_secure_password
end
