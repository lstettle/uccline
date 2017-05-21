class DonationsController < ApplicationController

  def index
    @donations = Donation.all 
    if params[:category]
      category = Category.find_by(name: params[:category])
      @donations = donation.event
    end
  end
   
  def new
    render "new.html.erb"
  end

  def create
    donation = Donation.new(
      description: params["description"],
      amount: params["amount"],
      quantity: params["quantity"]
      )
    donation.save
    event_donation = EventDonation.new(event_id: event.id, donation_id: params["donation_id"])
    event_donation.save
    
  end

  def show
    donation_id = params[:id]
    @donation = Donation.find_by(id: donation_id)
    redirect_to "/donation/#{donation.id}"
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

