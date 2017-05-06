class EventsController < ApplicationController
  
  def index
    @events = Event.all 
    if params[:category]
      category = Category.find_by(name: params[:category])
      @events = category.events
    end
  end
  def calendar
    @events = Event.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    event = Event.new(
      location: params["location"],
      datetime: params["datetime"],
      name: params["name"],
      price_adult: params["price_adult"],
      price_child: params["price_child"],
      status: params["status"],
      description: params["description"]
      )
    event.save
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
    event.datetime = params[:datetime]
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
