class FlightsController < ApplicationController
  def index
    @airports = Airport.order(:airport_code)
    @passenger_options = (1..4).to_a
    @flight_dates = Flight
      .select("DISTINCT DATE(start) AS flight_date")
      .order("flight_date")
      .map { |f| Date.parse(f.flight_date) }

    if search_params_present?
      @flights = Flight
        .where(departure_airport_id: params[:departure_airport_id])
        .where(arrival_airport_id: params[:arrival_airport_id])
        .where(start: params[:date].to_date.all_day)
    end
  end

  private

  def search_params_present?
    params[:departure_airport_id].present? &&
      params[:arrival_airport_id].present? &&
      params[:date].present?
  end
end
