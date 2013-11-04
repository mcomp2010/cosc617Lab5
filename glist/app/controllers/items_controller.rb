class ItemsController < ApplicationController


  def create
    @list = List.find(params[:list_id])
    @item = @list.items.create!(params[:item])
    redirect_to @list
  end

  def destroy
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])
    @item.destroy
    redirect_to @list
  end

  def moveup
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])
    @item.move_higher
    redirect_to @list
  end

  def movedown
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])
    @item.move_lower
    redirect_to @list
  end


  def movetop
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])
    @item.move_to_top
    redirect_to @list
  end


  def movebottom
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])
    @item.move_to_bottom
    redirect_to @list
  end

end
