class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    @item = Item.find(params[:item_id])
  end

  def new
    @booking = Booking.new
    @item = Item.find(params[:item_id])
  end

  def create
    @item = Item.find(params[:item_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @days = (@booking.end_date - @booking.start_date).to_i
    @total_price = (@item.price * @days)
    @booking.price = @total_price
    @booking.item = @item

    if @booking.save
      redirect_to item_booking_path(@item, @booking) #direct user to page saying that bookings is confirmed
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:item_id, :price, :start_date, :end_date, :user_id)
  end
end
