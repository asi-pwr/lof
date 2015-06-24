class ContainersController < ApplicationController
  def index
    @containers = Container.roots
  end

  def show

  end
end
