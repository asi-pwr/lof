# frozen_string_literal: true
class ContainersController < ApplicationController
  before_action :set_container, only: [:show, :destroy, :edit, :update]

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

  def create
    @container = Container.new(container_params)
    if @container.save
      redirect_to @container
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @container.update(container_params)
      redirect_to @container, notice: 'Container was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @container.destroy
    respond_to do |format|
      format.html { redirect_to containers_path, notice: 'Container was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def container_params
    params.require(:container).permit(:name, :description)
  end

  def set_container
    @container = Container.find(params[:id])
  end
end
