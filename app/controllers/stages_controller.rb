class StagesController < ApplicationController
  def index
    @stages = Stage.order(:number)
  end
end
