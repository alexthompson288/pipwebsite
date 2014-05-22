class ProgramsessionsController < ApplicationController
  before_action :set_programsession, only: [:show, :edit, :update, :destroy]

  # GET /programsessions
  # GET /programsessions.json
  def index
    @programsessions = Programsession.all
  end

  # GET /programsessions/1
  # GET /programsessions/1.json
  def show
    @programsession = Programsession.find(params[:id])
    @programmodule = Programmodule.find_by_cms_id(@programsession.programmodule_id)
    @story = Story.find_by_cms_id(@programsession.story_id)
    @pipisode = Pipisode.find_by_cms_id(@programsession.pipisode_id)
    @sections = Section.where(:programsession_id => @programsession.cms_id)
  end

  # GET /programsessions/new
  def new
    @programsession = Programsession.new
  end

  # GET /programsessions/1/edit
  def edit
  end

  # POST /programsessions
  # POST /programsessions.json
  def create
    @programsession = Programsession.new(programsession_params)

    respond_to do |format|
      if @programsession.save
        format.html { redirect_to @programsession, notice: 'Programsession was successfully created.' }
        format.json { render action: 'show', status: :created, location: @programsession }
      else
        format.html { render action: 'new' }
        format.json { render json: @programsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programsessions/1
  # PATCH/PUT /programsessions/1.json
  def update
    respond_to do |format|
      if @programsession.update(programsession_params)
        format.html { redirect_to @programsession, notice: 'Programsession was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @programsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programsessions/1
  # DELETE /programsessions/1.json
  def destroy
    @programsession.destroy
    respond_to do |format|
      format.html { redirect_to programsessions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programsession
      @programsession = Programsession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programsession_params
      params.require(:programsession).permit(:number, :learningobjective, :programmodule_id, :story_id, :pipisode_id, :learningvoyagebool, :target_number, :highest_number, :cms_id)
    end
end
