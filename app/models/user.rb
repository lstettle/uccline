class User < ApplicationRecord
  has_many :tasks
  has_many :events, through: :tasks
  has_secure_password
end
