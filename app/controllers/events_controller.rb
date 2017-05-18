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
      start_date: params["start_date"],
      end_date: params["end_date"],
      name: params["name"],
      price_adult: params["price_adult"],
      price_child: params["price_child"],
      status: params["status"],
      description: params["description"]
    )
    event.save
    event_category = EventCategory.new(event_id: event.id, category_id: params["category_id"], location_id: params["location_id"], committee_ministry_id: params["committee_ministry_id"])
    event_category.save


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
