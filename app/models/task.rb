class Task < ApplicationRecord
  belongs_to :event, optional: true
  belongs_to :user, optional: true
  belongs_to :committee_ministry, optional: true
  has_many :locations
  
end
