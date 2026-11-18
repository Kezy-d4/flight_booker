# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# AIRPORTS
[
  "NYC",
  "AUS",
  "SFO",
  "HSV",
  "LAX",
  "MIA",
  "ICT",
  "ORH",
  "DTW",
  "DCA"
].each do |airport_code|
  Airport.find_or_create_by!(code: airport_code)
end

# FLIGHTS
[
  {
    departure_airport_id: Airport.find_by_code!("NYC").id,
    arrival_airport_id: Airport.find_by_code!("SFO").id,
    departure_date: "2026-11-15",
    departure_time: "T13:30",
    duration_mins: 307
  },
  {
    departure_airport_id: Airport.find_by_code!("AUS").id,
    arrival_airport_id: Airport.find_by_code!("LAX").id,
    departure_date: "2026-12-01",
    departure_time: "T12:00",
    duration_mins: 168
  },
  {
    departure_airport_id: Airport.find_by_code!("MIA").id,
    arrival_airport_id: Airport.find_by_code!("HSV").id,
    departure_date: "2026-11-19",
    departure_time: "T3:30",
    duration_mins: 161
  },
  {
    departure_airport_id: Airport.find_by_code!("DCA").id,
    arrival_airport_id: Airport.find_by_code!("ORH").id,
    departure_date: "2026-12-25",
    departure_time: "T2:20",
    duration_mins: 165
  },
  {
    departure_airport_id: Airport.find_by_code!("DTW").id,
    arrival_airport_id: Airport.find_by_code!("ICT").id,
    departure_date: "2027-01-12",
    departure_time: "T16:30",
    duration_mins: 210
  },
  {
    departure_airport_id: Airport.find_by_code!("NYC").id,
    arrival_airport_id: Airport.find_by_code!("MIA").id,
    departure_date: "2026-11-05",
    departure_time: "T17:30",
    duration_mins: 215
  },
  {
    departure_airport_id: Airport.find_by_code!("HSV").id,
    arrival_airport_id: Airport.find_by_code!("SFO").id,
    departure_date: "2026-11-28",
    departure_time: "T20:30",
    duration_mins: 360
  },
  {
    departure_airport_id: Airport.find_by_code!("ORH").id,
    arrival_airport_id: Airport.find_by_code!("AUS").id,
    departure_date: "2026-12-04",
    departure_time: "T23:30",
    duration_mins: 350
  }
].each do |flight_data|
  Flight.find_or_create_by!(
    departure_airport_id: flight_data[:departure_airport_id],
    arrival_airport_id: flight_data[:arrival_airport_id],
    departure_date: flight_data[:departure_date],
    departure_time: flight_data[:departure_time],
    duration_mins: flight_data[:duration_mins]
  )
end
