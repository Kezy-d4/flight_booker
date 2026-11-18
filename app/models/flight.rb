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

  scope :departing_from_airport, ->(airport_id) { where("departure_airport_id == ?", airport_id) }
  scope :arriving_at_airport, ->(airport_id) { where("arrival_airport_id == ?", airport_id) }
  scope :departing_on_date, ->(date) { where("departure_date == ?", date) }
end
