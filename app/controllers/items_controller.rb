class ItemsController < ApplicationController

  def search
    @results = Item.find_by_fuzzy_name(params[:string], :limit => 10)
  end

  private

  def item_params
    params.require(:item).permit(:name, :quantity)
  end
end
