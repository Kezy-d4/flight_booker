class DropBookings < ActiveRecord::Migration[8.1]
  def change
    drop_table :bookings
  end
end
