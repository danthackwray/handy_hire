class ItemsController < ApplicationController
  def index
    if params[:query].present?
      @items = Item.search_by_name_and_description (params[:query])
    else
      @items = Item.all
    end
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

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = item.find(params[:id])
    @item.update(item_params)

    redirect_to item_path(@item)
  end


  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path, notice: "item deleted succesfully"
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
