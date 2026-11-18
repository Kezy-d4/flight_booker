class AddDepartureDateAndDepartureTimeToFlights < ActiveRecord::Migration[8.1]
  def change
    add_column :flights, :departure_date, :date, null: false
    add_column :flights, :departure_time, :time, null: false
  end
end
