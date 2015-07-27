class ContainersController < ApplicationController
  before_action :set_container, only: [:show]
  
  def index
    @containers = Container.roots
  end

  def show
    @containers = @container.children
    @items = @container.items
  end

  def new
    @container = Container.new
  end

  private

  def container_params
    params.require(:container).permit(:name, :description)
  end

  def set_container
    @container = Container.find(params[:id]) 
  end
end
