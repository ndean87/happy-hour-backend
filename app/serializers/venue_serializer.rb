class VenueSerializer < ActiveModel::Serializer
  attributes :id, :venue_name, :rating, :address, :state, :city, :zipcode, :phone_number, :neighborhood, :latitude, :longitude, :specials

  has_many :specials


end
