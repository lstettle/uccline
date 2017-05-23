class Event < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :location
  belongs_to :committee_ministry
  has_many :event_categories
  has_many :categories, through: :event_categories
  has_many :tasks
  has_many :tickets
  has_many :donations


  def icon
    category = self.categories.first
    if category
      if category.name == "Worship"
        return "home"
      elsif category.name == "Music"
        return "music"
      elsif category.name == "Meeting"
        return "th-list"
      elsif category.name == "Fundraiser"
        return "usd"
      elsif category.name == "Social"
        return "film"
      elsif category.name == "Community Event"
        return "user"
      elsif category.name == "Private Event"
        return "certificate"
      elsif category.name == "Education"
        return "educaton"
      elsif category.name == "Missons/Community Outreach"
        return "grain"
      elsif category.name == "Visitaton"
        return "heart"
      end
    end
  end
end
