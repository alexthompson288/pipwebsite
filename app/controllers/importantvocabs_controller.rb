class ImportantvocabsController < ApplicationController
  before_action :set_importantvocab, only: [:show, :edit, :update, :destroy]

  # GET /importantvocabs
  # GET /importantvocabs.json
  def index
    @importantvocabs = Importantvocab.all
  end

  # GET /importantvocabs/1
  # GET /importantvocabs/1.json
  def show
  end

  # GET /importantvocabs/new
  def new
    @importantvocab = Importantvocab.new
  end

  # GET /importantvocabs/1/edit
  def edit
  end

  # POST /importantvocabs
  # POST /importantvocabs.json
  def create
    @importantvocab = Importantvocab.new(importantvocab_params)

    respond_to do |format|
      if @importantvocab.save
        format.html { redirect_to @importantvocab, notice: 'Importantvocab was successfully created.' }
        format.json { render action: 'show', status: :created, location: @importantvocab }
      else
        format.html { render action: 'new' }
        format.json { render json: @importantvocab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /importantvocabs/1
  # PATCH/PUT /importantvocabs/1.json
  def update
    respond_to do |format|
      if @importantvocab.update(importantvocab_params)
        format.html { redirect_to @importantvocab, notice: 'Importantvocab was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @importantvocab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /importantvocabs/1
  # DELETE /importantvocabs/1.json
  def destroy
    @importantvocab.destroy
    respond_to do |format|
      format.html { redirect_to importantvocabs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_importantvocab
      @importantvocab = Importantvocab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def importantvocab_params
      params.require(:importantvocab).permit(:pipisode_id, :story_id, :word_id, :sentence_id)
    end
end
