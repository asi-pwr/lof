# frozen_string_literal: true
class ItemsController < ApplicationController
  def index
    @items = Item.all
    respond_to do |format|
      format.html { @items }
      format.json { render json: @items, content_type: "application/json"}
    end
  end

  def show
    @item = Item.find(params[:id])
    respond_to do |format|
      format.html { @item }
      format.json { render json: @item, content_type: "application/json"}
    end
  end

  def new
    @item = Item.new(quantity: 1)
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    elseg
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_path, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end

    def search
      @results = Item.find_by_fuzzy_name(params[:string], limit: 10)
    end
end

  private

  def item_params
    params.require(:item).permit(:name, :quantity, :container_id)
  end
end
