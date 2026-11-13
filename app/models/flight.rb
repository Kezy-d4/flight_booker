class Flight < ApplicationRecord
  validates(
    :departure_airport_id,
    :arrival_airport_id,
    :departure_datetime,
    :duration_mins,
    presence: true
  )

  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"
end
