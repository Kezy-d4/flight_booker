class BookingsController < ApplicationController
  def new
    @flight = Flight.find_by_id!(params[:searched_flight])
    @number_of_passengers = params[:number_of_passengers]
    @booking = Booking.new
    @number_of_passengers.to_i.times { @booking.passengers.build }
  end
end
