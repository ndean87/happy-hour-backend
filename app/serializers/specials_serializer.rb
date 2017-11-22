class SpecialsSerializer < ActiveModel::Serializer
  attributes :id, :day, :special, :time, :venue_id

  has_one :venue
end
