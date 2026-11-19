class DropPassengers < ActiveRecord::Migration[8.1]
  def change
    drop_table :passengers
  end
end
