class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    passenger_count = params[:passengers].to_i

    @booking = Booking.new(flight: @flight)

    passenger_count.times { @booking.passengers.build }
  end
end
