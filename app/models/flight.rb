class Flight < ApplicationRecord
  belongs_to :airport
  has_many :arrival_airport
  has_many :departure_airport
end
