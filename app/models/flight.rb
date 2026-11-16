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

  # See Ruby 4.1 strftime formatting documentation:
  # https://docs.ruby-lang.org/en/master/language/strftime_formatting_rdoc.html
  def self.unique_flight_departure_dates(format = "%Y-%m-%d")
    originals = Flight.order(:departure_datetime).distinct.pluck(:departure_datetime)
    formatted = originals.map { |original| original.to_datetime.strftime("%Y-%m-%d") }
    formatted.uniq
  end
end
