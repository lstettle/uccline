class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all 
    if params[:category]
      category = Category.find_by(name: params[:category])
      @ticket = tickets.event
    end
  end
   
  def new
    render "new.html.erb"
  end

  def create
    ticket = Ticket.new(
      price_adult: params["price_adult"],
      price_child: params["price_child"],
      )
    ticket.save
    event_ticket = EventTicket.new(event_id: event.id, ticket_id: params["ticket_id"])
    event_ticket.save
    
  end

  def show
    ticket_id = params[:id]
    @ticket = Ticket.find_by(id: ticket_id)
    redirect_to "/tickets/#{ticket.id}"
    render "show.html.erb"
  end

  def edit
    ticket_id = params[:id]
    @ticket = Ticket.find_by(id: ticket_id)
    render "edit.html.erb"
  end

  def update
    ticket_id = params[:id]
    ticket = Ticket.find_by(id: ticket_id)
    ticket.price_adult = params[:price_adult]
    ticket.price_child = params[:price_child]
    ticket.save
    redirect_to "/ticket/#{ticket.id}"
  end

  def destroy
    ticket_id = params[:id]
    ticket = Ticket.find_by(id: ticket_id)
    ticket.destroy
    render "destroy.html.erb"
  end
end
