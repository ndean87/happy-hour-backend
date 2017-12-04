class SpecialsController < ApplicationController

  def index
    @specials = Special.all
    render json: @specials
  end

  def new
    @special = Special.new
    render json: @special
  end

  def edit
    @special = Special.find(params[:id])
  end

  def update
    @special = Special.find(params[:id])
    @special.update(special_params)
    if @special.save
      render json: @special
    else
      render json: {errors: @special.errors.full_messages}, status: 422
    end
  end

  def create
    @special = Special.create(day: params[:day], special: params[:deal], time: params[:hours])
  end

  private

  def special_params
    params.require(:special).permit(:special, :time)
  end

end
