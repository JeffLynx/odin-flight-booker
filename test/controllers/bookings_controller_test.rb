require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new with flight and passengers" do
    airport1 = Airport.create!(airport_code: "NYC")
    airport2 = Airport.create!(airport_code: "SFO")

    flight = Flight.create!(
      departure_airport: airport1,
      arrival_airport: airport2,
      start: Time.zone.local(2026, 6, 25, 6, 0, 0),
      duration: 120
    )

    get bookings_new_url, params: { flight_id: flight.id, passengers: 2 }

    assert_response :success
  end
end
