class Admin::ItemsController < ApplicationController
  def index
    @items =Item.all
  end

  def new
    @item_new = Item.new
  end

  def create
    @item_new = Item.new(item_params)
    if @item_new.save
      redirect_to admin_item_path(@item_new.id)
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
    @customer = current_customer
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to admin_item_path(@item)
    else
      render :edit
    end
  end
  
  private
  def item_params
    params.require(:item).permit(:genre_id, :name, :image, :introduction, :price, :is_active)
  end
end
