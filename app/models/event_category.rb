class EventCategory < ApplicationRecord
  belongs_to :category
  belongs_to :event
  belongs_to :task
  belongs_to :location
  belongs_to :committee_ministry
end
