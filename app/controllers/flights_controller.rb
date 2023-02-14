class FlightsController < ApplicationController

  def index
    @flights = Flight.all
    @airport_options = Airport.all.map { |airport| [airport.code] }
    if params[:from_airport].present?
     @flights = search
    else
      flash[:notice] = "Please select departure and arrival airports and flight date to search for flights."
    end
  end

  def search
  from_airport_id = Airport.find_by(code: params[:from_airport]).id
  to_airport_id = Airport.find_by(code: params[:to_airport]).id

  @flights = Flight.where(departing_airport_id: from_airport_id,
                          arrival_airport_id: to_airport_id,
                          scheduled_for: params[:scheduled_for])
  end


end

#from_airport=BOS&to_airport=SFO&scheduled_for=2023-02-02T07%3A00&commit=Search
