class VenuesController < ApplicationController


  def index
    @venues = Venue.all
    render json: @venues.includes(:specials)

  end

  def new
    @venue = Venue.new
    render json: @venue
  end

  def create
    @venue = Venue.create(venue_name: params[:venue_name], address: params[:venue_address], state: params[:venue_state], city: params[:venue_city], zipcode: params[:venue_zipcode], phone_number: params[:venue_phone], neighborhood: params[:venue_neighborhood], latitude: params[:latitude], longitude: params[:longitude])
  end

end
