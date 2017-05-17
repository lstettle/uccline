class PagesController < ApplicationController
  def home
    "render home.html.erb"
  end

  def about
    "render about.html.erb"
  end

  def contact
    "render contact.html.erb"
  end
  
  def staff
    "render staff.html.erb"
  end

  def boards
    @committee_ministries = CommitteeMinistry.all 
    "render boards.html.erb"
  end

  def locations
    @locations = Location.all
    "render locations.html.erb"
  end
    
end

