class PipisodesController < ApplicationController
  before_action :set_pipisode, only: :show

  def index
    @pipisodes = Pipisode.where(:publishable => true)
  end

  def show
  end

  private
    def set_pipisode
      @pipisode = Pipisode.find(params[:id])
    end
end
