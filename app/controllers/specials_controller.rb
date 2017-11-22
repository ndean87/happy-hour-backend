class SpecialsController < ApplicationController

  def index
    @specials = Special.all
    render json: @specials
  end

  def new
    @special = Special.new
    render json: @special
  end

  def create
    @special = Special.create(day: params[:day], special: params[:deal], time: params[:hours])
  end

end
