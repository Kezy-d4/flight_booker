class BookingsController < ApplicationController
  def new
    @flight = Flight.find_by_id!(params[:searched_flight])
    @number_of_passengers = params[:number_of_passengers]
    @booking = Booking.new
    @number_of_passengers.to_i.times { @booking.passengers.build }
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.expect(booking: [ :flight_id, passengers_attributes: [ [ :name, :email ] ] ])
  end
end
