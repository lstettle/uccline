class Location < ApplicationRecord
  has_many :events, through: :events
end
