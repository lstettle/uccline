class EventsController < ApplicationController
  
  def index
    @events = Event.all 
    if params[:category]
      category = Category.find_by(name: params[:category])
      @events = category.events
    end
  end

  def calendar_view
    @events = Event.all
    render "index.html.erb"
  end
  
  def new
    render "new.html.erb"
  end

  def create
    event = Event.new(
      start_time: params["start_time"],
      end_time: params["end_time"],
      name: params["name"],
      description: params["description"],
      location_id: params["location_id"]
    )
    event.save
    event_category = EventCategory.new(event_id: event.id, category_id: params["category_id"])
    event_category.save
    #event_donation = EventDonation.new(event_id: event.id, donation_id: params["donation_id"])
    #event_donation.save
    #event_task = EventTask.new(event_id: event.id, task_id: params["task_id"])
    #event_task.save
    #event_ticket = EventTicket.new(event_id: event.id, price_adult: params["price_adult"], price_child: params["price_child"])
    #event_ticket.save
    event_owner = EventOwner.new(committee_ministry_id: params["committee_ministry_id"])
    event_owner.save
    event_location = EventLocation.new(location_id: params["location_id"])
    event_location.save



    redirect_to "/events/#{event.id}"
  end

  def show
    event_id = params[:id]
    @event = Event.find_by(id: event_id)
    render "show.html.erb"
  end

  def edit
    event_id = params[:id]
    @event = Event.find_by(id: event_id)
    render "edit.html.erb"
  end

  def update
    event_id = params[:id]
    event = Event.find_by(id: event_id)
    event.location = params[:location]
    event.start_date = params[:start_date]
    event.end_date = params[:end_date]
    event.start_time = params[:start_time]
    event.end_time = params[:end_time]
    event.name = params[:name]
    event.price_adult = params[:price_adult]
    event.price_child = params[:price_child]
    event.save
    redirect_to "/events/#{event.id}"
  end

  def destroy
    event_id = params[:id]
    event = Event.find_by(id: event_id)
    event.destroy
    render "destroy.html.erb"
  end
 
end
