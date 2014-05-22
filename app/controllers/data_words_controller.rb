class DataWordsController < ApplicationController
  before_action :set_data_word, only: [:show, :edit, :update, :destroy]

  # GET /data_words
  # GET /data_words.json
  def index
    @data_words = DataWord.all
  end

  # GET /data_words/1
  # GET /data_words/1.json
  def show
  end

  # GET /data_words/new
  def new
    @data_word = DataWord.new
  end

  # GET /data_words/1/edit
  def edit
  end

  # POST /data_words
  # POST /data_words.json
  def create
    @data_word = DataWord.new(data_word_params)

    respond_to do |format|
      if @data_word.save
        format.html { redirect_to @data_word, notice: 'Data word was successfully created.' }
        format.json { render action: 'show', status: :created, location: @data_word }
      else
        format.html { render action: 'new' }
        format.json { render json: @data_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_words/1
  # PATCH/PUT /data_words/1.json
  def update
    respond_to do |format|
      if @data_word.update(data_word_params)
        format.html { redirect_to @data_word, notice: 'Data word was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @data_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_words/1
  # DELETE /data_words/1.json
  def destroy
    @data_word.destroy
    respond_to do |format|
      format.html { redirect_to data_words_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_word
      @data_word = DataWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_word_params
      params.require(:data_word).permit(:section_id, :word_id, :is_target_word, :is_dummy_word, :programsession_id)
    end
end
