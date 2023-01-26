class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map { |airport| [airport.code] }
    @flights = Flights
  end

end
