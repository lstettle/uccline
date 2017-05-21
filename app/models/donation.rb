class Donation < ApplicationRecord
  belongs_to :user
  has_many :events, through: :event_donations
end
