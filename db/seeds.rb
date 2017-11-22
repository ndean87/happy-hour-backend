# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' })
#   Character.create(name: 'Luke', movie: movies.first)


Venue.create(venue_name: "123 Burger Shot Beer", address: "738 10th Ave", state: "NY", city: "New York", zipcode: 10019, phone_number: "212-315-0123", neighborhood: "Hell's Kitchen", latitude: 40.764793, longitude: -73.991427)

Venue.create(venue_name: "Ainsworth Park", address: "111 E 18th St.", state: "NY", city: "New York", zipcode: 10003, phone_number: "212-673-2467", neighborhood: "Gramercy", latitude: 40.737133, longitude: -73.987950)

Venue.create(venue_name: "The Anchored Inn", address: "57 Waterbury St.", state: "NY", city: "New York", zipcode: 11206, phone_number: "718-576-3297", neighborhood: "Williamsburg", latitude: 40.708908, longitude: -73.937208)

Special.create(day: "monday", special: "1/2 off Draft Beer and Wine", time: "5pm - 7pm")

Special.create(day: "wednesday", special: "50 cent wings", time: "6pm - 8m")

Special.create(day: "Saturday", special: "$2 PBR", time: "9pm - 10pm")
