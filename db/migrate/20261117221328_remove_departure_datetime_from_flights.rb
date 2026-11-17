class RemoveDepartureDatetimeFromFlights < ActiveRecord::Migration[8.1]
  def change
    remove_column :flights, :departure_datetime, :datetime
  end
end
