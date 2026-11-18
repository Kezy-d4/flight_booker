class Flight < ApplicationRecord
  validates(
    :departure_airport_id,
    :arrival_airport_id,
    :departure_date,
    :departure_time,
    :duration_mins,
    presence: true
  )

  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"
end
