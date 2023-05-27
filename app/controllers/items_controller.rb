class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    # @review = Review.new
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to item_path(@item)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :address, :price, :category, :user_id)
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
