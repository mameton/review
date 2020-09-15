class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
    @comments = @item.comments

  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :url, :text, :category_id, :price, :point_id).merge(user_id: current_user.id)
  end

end
