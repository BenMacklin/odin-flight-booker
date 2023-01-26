# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airports = Airport.create([{ name: "BOS" }, { name: "JFK" }, { name: "MIA" },
{ name: "LAX" }, { name: "ORD" }, { name: "DEN" }, { name: "SFO" }])

flights = Flight.create([
  { departing_airport_id: airports.first.id, arrival_airport_id: airports.last.id, duration: 320, scheduled_for: "2020-12-25 07:00:00"},
  { departing_airport_id: airports.second.id, arrival_airport_id: airports.first.id, duration: 320, scheduled_for: "2020-12-25 09:00:00"},
  { departing_airport_id: airports.third.id, arrival_airport_id: airports.second.id, duration: 320, scheduled_for: "2020-12-25 11:00:00"},
  { departing_airport_id: airports.last.id, arrival_airport_id: airports.first.id, duration: 380, scheduled_for: "2020-12-26 07:00:00"},
  { departing_airport_id: airports.second.id, arrival_airport_id: airports.third.id, duration: 380, scheduled_for: "2020-12-26 09:00:00"},
  { departing_airport_id: airports.fourth.id, arrival_airport_id: airports.second.id, duration: 380, scheduled_for: "2020-12-26 11:00:00"}
])
