class DonationsController < ApplicationController

  def index
    @donations = Donation.all 
    if params[:event]
      event = Event.find_by(name: params[:event])
      @donations = donation.event
    end
  end
   
  def new
    render "new.html.erb"
  end

  def create
    donation = Donation.new(
      event_id: params["event_id"],
      description: params["description"],
      amount: params["amount"],
      quantity: params["quantity"]
      )
    donation.save

    redirect_to "/donations/#{donation.id}"
    
  end

  def show
    donation_id = params[:id]
    @donation = Donation.find_by(id: donation_id)
    render "show.html.erb"
  end

  def edit
    donation_id = params[:id]
    @donation = Donation.find_by(id: donation_id)
    render "edit.html.erb"
  end

  def update
    donation_id = params[:id]
    donation = Donation.find_by(id: donation_id)
    donation.event_id = params[:event_id]
    donation.description = params[:description]
    donation.amount = params[:amount]
    donation.quantity = params[:quantity]
    donation.save
    redirect_to "/donation/#{donation.id}"
  end

  def destroy
    donation_id = params[:id]
    donation = Donation.find_by(id: donation_id)
    donation.destroy
    render "destroy.html.erb"
  end
end

