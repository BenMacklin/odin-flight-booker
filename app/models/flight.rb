class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport", foreign_key: "departing_airport_id"
  belongs_to :to_airport, class_name: "Airport", foreign_key: "arrival_airport_id"
  has_many :bookings
  has_many :passangers, through: :bookings
end
