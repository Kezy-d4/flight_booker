class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flights = Flight.all
    @searched_flights =
      Flight
        .departing_from_airport(params[:departure_airport_id])
        .arriving_at_airport(params[:arrival_airport_id])
        .departing_on_date(params[:departure_date])
  end
end
