class EventOwner < ApplicationRecord
  belongs_to :event 
  belongs_to :committee_ministry
end
