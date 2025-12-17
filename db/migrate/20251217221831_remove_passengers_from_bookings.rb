class RemovePassengersFromBookings < ActiveRecord::Migration[8.1]
  def change
    remove_column :bookings, :passenger, :integer
  end
end
