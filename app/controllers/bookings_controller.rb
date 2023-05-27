class BookingsController < ApplicationController
  def show
    @bookings = Booking.find(params[:id])
    @item = Item.find(params[:item_id])
  end

end
#create bookings new
#create bookings show
creat emy new bookings , new and go
