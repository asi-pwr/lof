# frozen_string_literal: true
class ItemsController < ApplicationController
  protect_from_forgery with: :null_session

  public

  def index
    @items = Item.all
    respond_to do |format|
      format.html { @items }
      format.json { render json: @items }
    end
  end

  def show
    @item = Item.find(params[:id])
    respond_to do |format|
      format.html { @item }
      format.json { render json: @item }
    end
  end

  def new
    @item = Item.new(quantity: 1)
  end

  def create
    binding.pry
    @item = Item.new(item_params)
    if @item.save
      respond_to do |format|
        format.html { @item }
        format.json { render json: @item, status: :created }
      end
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
      respond_to do |format|
        format.html { redirect_to @item, notice: 'Item was successfully updated' }
        format.json { render json: @item, status: :ok }
      end
    else
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
  end

  private

  def search
    @results = Item.find_by_fuzzy_name(params[:string], limit: 10)
  end

  def item_params
    params.require(:item).permit(:name, :quantity, :container_id)
  end
end
