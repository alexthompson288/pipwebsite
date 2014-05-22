class DataPhonemesController < ApplicationController
  before_action :set_data_phoneme, only: [:show, :edit, :update, :destroy]

  # GET /data_phonemes
  # GET /data_phonemes.json
  def index
    @data_phonemes = DataPhoneme.all
  end

  # GET /data_phonemes/1
  # GET /data_phonemes/1.json
  def show
  end

  # GET /data_phonemes/new
  def new
    @data_phoneme = DataPhoneme.new
  end

  # GET /data_phonemes/1/edit
  def edit
  end

  # POST /data_phonemes
  # POST /data_phonemes.json
  def create
    @data_phoneme = DataPhoneme.new(data_phoneme_params)

    respond_to do |format|
      if @data_phoneme.save
        format.html { redirect_to @data_phoneme, notice: 'Data phoneme was successfully created.' }
        format.json { render action: 'show', status: :created, location: @data_phoneme }
      else
        format.html { render action: 'new' }
        format.json { render json: @data_phoneme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_phonemes/1
  # PATCH/PUT /data_phonemes/1.json
  def update
    respond_to do |format|
      if @data_phoneme.update(data_phoneme_params)
        format.html { redirect_to @data_phoneme, notice: 'Data phoneme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @data_phoneme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_phonemes/1
  # DELETE /data_phonemes/1.json
  def destroy
    @data_phoneme.destroy
    respond_to do |format|
      format.html { redirect_to data_phonemes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_phoneme
      @data_phoneme = DataPhoneme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_phoneme_params
      params.require(:data_phoneme).permit(:section_id, :phoneme_id, :is_target_phoneme, :is_dummy_phoneme, :programsession_id)
    end
end
