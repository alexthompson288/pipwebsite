class LearningsessionsController < ApplicationController
  before_action :set_learningsession, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!
  
  # GET /sessions
  # GET /sessions.json
  def index
    @learningsessions = Learningsession.all
  end

  # GET /sessions/1
  # GET /sessions/1.json
  def show
  end

  # GET /sessions/new
  def new
    @learningsession = Learningsession.new
  end

  # GET /sessions/1/edit
  def edit
  end

  # POST /sessions
  # POST /sessions.json
  def create
    @learningsession = Learningsession.new(learningsession_params)

    respond_to do |format|
      if @learningsession.save
        format.html { redirect_to @learningsession, notice: 'Session was successfully created.' }
        format.json { render action: 'show', status: :created, location: @learningsession }
      else
        format.html { render action: 'new' }
        format.json { render json: @learningsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sessions/1
  # PATCH/PUT /sessions/1.json
  def update
    respond_to do |format|
      if @learningsession.update(learningsession_params)
        format.html { redirect_to @learningsession, notice: 'Session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @learningsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    @learningsession.destroy
    respond_to do |format|
      format.html { redirect_to sessions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_learningsession
      @learningsession = Learningsession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def learningsession_params
      params.require(:learningsession).permit(:account_username, :child_name, :has_completed, :start, :end, :session_identifier, :session_name, :session_id, :session_number, :session_type, :scenes, :phoneme_ids, :target_phoneme_id, :word_ids, :target_word_id, :keyword_ids, :target_keyword_id)
    end
end
