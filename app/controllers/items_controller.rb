class ItemsController < ApplicationController
  def index
    @items = Item.all.order("created_at DESC")
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

  def destroy
    item =Item.find(params[:id])
    item.destroy
  end

  def show
    @item = Item.find(params[:id])
    @comments = @item.comments.order("created_at DESC")
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      redirect_to item_path
    else
      render :edit
    end
  end

  def search
    @items = Item.search(params[:keyword])
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :url, :text, :category_id, :price, :point_id).merge(user_id: current_user.id)
  end

end
