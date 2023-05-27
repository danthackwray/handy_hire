class AddFieldsToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :price, :integer
    add_reference :bookings, :user, foreign_key: true
    add_reference :bookings, :item, foreign_key: true
    add_column :bookings, :start_date, :date
    add_column :bookings, :end_date, :date
    add_column :bookings, :status, :integer, default: 0
    end
  end
