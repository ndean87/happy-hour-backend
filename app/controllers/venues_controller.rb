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
    venue_specials = @venue.specials

    user_edited_specials = params[:specials].select do |special|
      !special[:special].empty? || !special[:time].empty?
    end

    user_edited_specials.each do |special|
      current_special = venue_specials.where(day: special['day']).first
      if current_special
        current_special.update(day: special[:day], special: special[:special], time: special[:time])
      else
        @venue.specials.create(day: special[:day], special: special[:special], time: special[:time])
      end

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
