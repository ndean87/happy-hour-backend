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
    new_venue = Venue.create(venue_params)
    params[:specials].each do |special|
      new_venue.specials.create(day: special[:day], special: special[:special], time: special[:time])
    end
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    @venue.update(venue_params)
    params[:specials].each do |special|
      current_special = Special.find_by(id: special[:id])
      current_special.update(special: special[:special], time: special[:time])
    end
    if @venue.save
      render json: @venue
    else
      render json: {errors: @venue.errors.full_messages}, status: 422
    end
  end


  private

  def venue_params
    params.require(:venue).permit(:venue_name, :address, :city, :state, :zipcode, :phone_number, :neighborhood, :latitude, :longitude)
  end

end
