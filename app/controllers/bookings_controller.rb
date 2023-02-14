class BookingsController < ApplicationController

def new
  if params[:pax].blank?
    flash.alert = 'You must select the number of passengers in your search in order to book a flight.'
    redirect_to root_url
  else
    @booking = Booking.new
    params[:pax].to_i.times { @booking.passangers.build }
    @flight = Flight.find(params[:flight_id])
    render :new
  end
end

 def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity, notice: 'Need more information'
    end
 end

 def show
    @booking = Booking.find(params[:id])
  end

  private

 def booking_params
   params.require(:booking).permit(:flight_id, passangers_attributes: [:name, :email])
 end
end
