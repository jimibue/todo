class ListItemsController < ApplicationController

  def index
    @list_items = ListItem.all
  end

  def show
    @list_item = ListItem.find(params[:id])
  end

  def new
    @list_item = ListItem.new
  end

  def create
    @list_item = ListItem.new(list_item_params)
    if @list_item.save
      redirect_to list_items_path
    else
      render :new
    end
  end

  def edit
    @list_item = ListItem.find(params[:id])
  end

  def update
    @list_item = ListItem.find(params[:id])
    if @list_item.update(list_item_params)
      redirect_to list_item_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    @list_item = ListItem.find(params[:id])
    @list_item.destroy
    redirect_to list_items_path
  end


  def list_item_params
    params.require(:list_item).permit(:name, :description,:complete)
  end
end
