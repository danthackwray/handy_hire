class ItemsController < ApplicationController
  def index
    @items = Item.all
    # @lawnmowers_items = Items.where(category: "lawnmower")
  end

  def show
    @item = Item.find(params[:id])
    @review = Review.new
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(items_params)
    if @item.save
      redirect_to item_path(@item)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def items_params
    params.require(:item).permit(:name, :address, :price, :category, :user_id)
  end
end










end
