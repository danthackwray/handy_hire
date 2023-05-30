class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @booking = Booking.new
    # @review = Review.new
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :address, :price, :user_id)
  end
end


  # def miscellaneous
  #   @items = Item.where(category: "miscellaneous")
  # end

  # def beverages
  #   @items = Item.where(category: "beverages")
  # end

  # def entertainment
  #   @items = Item.where(category: "entertainment")
  # end
