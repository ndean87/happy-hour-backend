require 'open-uri'
require 'nokogiri'

class Venue < ApplicationRecord
  has_many :comments
	has_many :specials, dependent: :destroy
  # accepts_nested_attributes_for :specials



end
