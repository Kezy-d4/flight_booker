class Flight < ApplicationRecord
  validates(
    :departure_airport_id,
    :arrival_airport_id,
    :departure_datetime,
    :duration_mins,
    presence: true
  )

  belongs_to :departure_airport
  belongs_to :arrival_airport
end
