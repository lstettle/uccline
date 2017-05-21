class EventDonation < ApplicationRecord
  belongs_to :event 
  belongs_to :donation
end
