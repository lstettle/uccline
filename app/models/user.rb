class User < ApplicationRecord
  has_many :tasks
  has_many :events, through: :tasks
  has_many :committees
  has_many :ministries
  has_secure_password
end
