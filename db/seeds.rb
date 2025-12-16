# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Airport.delete_all
Flight.delete_all

nyc = Airport.create!(airport_code: 'NYC')

sfo = Airport.create!(airport_code: 'SFO')

lax = Airport.create!(airport_code: 'LAX')


Flight.create!(
  departure_airport: nyc,
  arrival_airport: sfo,
  start: Time.zone.local(2026, 6, 25, 6, 0, 0),
  duration: 120
)

Flight.create!(
  departure_airport: sfo,
  arrival_airport: lax,
  start: Time.zone.local(2026, 6, 26, 7, 0, 0),
  duration: 120
)

Flight.create!(
  departure_airport: lax,
  arrival_airport: nyc,
  start: Time.zone.local(2026, 6, 27, 7, 0, 0),
  duration: 120
)
