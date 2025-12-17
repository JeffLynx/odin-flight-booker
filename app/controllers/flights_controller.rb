class FlightsController < ApplicationController
  def index
    @airports = Airport.order(:airport_code)
    @passenger_options = (1..4).to_a
    @flight_dates = Flight
      .select("DISTINCT DATE(start) AS flight_date")
      .order("flight_date")
      .map { |f| Date.parse(f.flight_date) }
  end
end
