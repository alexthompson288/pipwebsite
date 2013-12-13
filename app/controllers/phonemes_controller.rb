class PhonemesController < ApplicationController
  before_action :set_phoneme, only: [:show, :edit, :update, :destroy]

  # GET /phonemes
  # GET /phonemes.json
  def index
    @phonemes = Phoneme.all
  end

  # GET /phonemes/1
  # GET /phonemes/1.json
  def show
  end

  # GET /phonemes/new
  def new
    @phoneme = Phoneme.new
  end

  # GET /phonemes/1/edit
  def edit
  end

  # POST /phonemes
  # POST /phonemes.json
  def create
    @phoneme = Phoneme.new(phoneme_params)

    respond_to do |format|
      if @phoneme.save
        format.html { redirect_to @phoneme, notice: 'Phoneme was successfully created.' }
        format.json { render action: 'show', status: :created, location: @phoneme }
      else
        format.html { render action: 'new' }
        format.json { render json: @phoneme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phonemes/1
  # PATCH/PUT /phonemes/1.json
  def update
    respond_to do |format|
      if @phoneme.update(phoneme_params)
        format.html { redirect_to @phoneme, notice: 'Phoneme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @phoneme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phonemes/1
  # DELETE /phonemes/1.json
  def destroy
    @phoneme.destroy
    respond_to do |format|
      format.html { redirect_to phonemes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phoneme
      @phoneme = Phoneme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phoneme_params
      params[:phoneme]
    end
end
