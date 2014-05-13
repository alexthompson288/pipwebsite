class PipisodesController < ApplicationController
  before_action :set_pipisode, only: [:show, :edit, :update, :destroy]

  # GET /pipisodes
  # GET /pipisodes.json
  def index
    @pipisodes = Pipisode.where(:publishable => true)
  end

  # GET /pipisodes/1
  # GET /pipisodes/1.json
  def show
  end

  # GET /pipisodes/new
  def new
    @pipisode = Pipisode.new
  end

  # GET /pipisodes/1/edit
  def edit
  end

  # POST /pipisodes
  # POST /pipisodes.json
  def create
    @pipisode = Pipisode.new(pipisode_params)

    respond_to do |format|
      if @pipisode.save
        format.html { redirect_to @pipisode, notice: 'Pipisode was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pipisode }
      else
        format.html { render action: 'new' }
        format.json { render json: @pipisode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pipisodes/1
  # PATCH/PUT /pipisodes/1.json
  def update
    respond_to do |format|
      if @pipisode.update(pipisode_params)
        format.html { redirect_to @pipisode, notice: 'Pipisode was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pipisode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pipisodes/1
  # DELETE /pipisodes/1.json
  def destroy
    @pipisode.destroy
    respond_to do |format|
      format.html { redirect_to pipisodes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pipisode
      @pipisode = Pipisode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pipisode_params
      params.require(:pipisode).permit(:video_filename, :image_filename, :order_number, 
        :interactive_video, :pipisode_overview, :programmodule_id, :phonicsset_id, :pipisode_title,
         :label_text, :publishable, :transcript_english, :transcript_french, :transcript_spanish, 
         :transcript_mandarin, :pipisode_overview_french, :pipisode_overview_spanish, :pipisode_overview_mandarin,
         :pipisode_title_french, :pipisode_title_spanish, :pipisode_title_mandarin, :video_filename_french,
         :video_filename_spanish, :video_filename_mandarin, :extra_activities, :extra_activities_french, :extra_activities_french,
         :extra_activities_spanish, :extra_activities_mandarin)
    end
end
