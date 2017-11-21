require 'open-uri'
require 'nokogiri'
require 'geocoder'

# THIS IS THE FILE CREATED WITH API

class Seed < ApplicationRecord

  def self.scrape
    # doc = Nokogiri::HTML(open("https://www.nyhappyhours.com/index.phtml?selectarea=&selectday=Monday&timerange=&metrostation=&selectrating=&showall=No&showall=Yes&sortby=Name&resultsperpage=2500"))
    # entries = doc.css('.card-title > a').map { |link| link['href']}
    # entries.each do |entry|
    #   venue_page = Nokogiri::HTML(open(entry))
    #   venue_name = venue_page.css('h1').text
    #   puts venue_name
      venue_page = Nokogiri::HTML(open("https://www.nyhappyhours.com/bussinfo.phtml?buss=82&uname=Woody+McHale%27s"))
      address_block = venue_page.css('.col-lg-8').text.split("\n")
      venue_name = venue_page.css('h1').text
      venue_address = address_block[4].strip
      venue_city = address_block[5].strip.split(",")[0]
      venue_state = address_block[5].strip.split(",")[1].split(" ")[0]
      venue_zipcode = address_block[5].strip.split(",")[1].split(" ")[1]
      venue_phone = venue_page.css('.col-sm-5.text-sm-right > h3 > a').text
      venue_neighborhood = venue_page.css('h5 .underline').text

      address = "#{venue_address} #{venue_city}, #{venue_state} #{venue_zipcode}"
      location = Geocoder.search(address)
      latitude = location[0].latitude
      longitude = location[0].longitude

      Venue.create(venue_name: venue_name, address: venue_address, state: venue_state, city: venue_city, zipcode: venue_zipcode, phone_number: venue_phone, neighborhood: venue_neighborhood, latitude: latitude, longitude: longitude)

      specials = venue_page.css('.col-12 > table tr')
      specials.each do |special|
        day = special.css('th').text.chomp(":")
        deal = special.css('td[width="80%"]').text
        hours = special.css('td[width="20%"]').text

        Venue.first.specials.create(day: day, special: deal, time: hours)
      end
    end
end
