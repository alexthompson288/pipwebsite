class DatasentencesController < ApplicationController
  before_action :set_datasentence, only: [:show, :edit, :update, :destroy]

  # GET /datasentences
  # GET /datasentences.json
  def index
    @datasentences = Datasentence.all
    @datasentences_quiz = Datasentence.where(:quiz => true).order(:pipisode_id).order(:story_id).order(:programsession_id).order(:programmodule_id)
    @datasentences_correctsentence = Datasentence.where(:correctsentence => true)
  end

  # GET /datasentences/1
  # GET /datasentences/1.json
  def show
  end

  # GET /datasentences/new
  def new
    @datasentence = Datasentence.new
  end

  # GET /datasentences/1/edit
  def edit
  end

  # POST /datasentences
  # POST /datasentences.json
  def create
    @datasentence = Datasentence.new(datasentence_params)

    respond_to do |format|
      if @datasentence.save
        format.html { redirect_to @datasentence, notice: 'Datasentence was successfully created.' }
        format.json { render action: 'show', status: :created, location: @datasentence }
      else
        format.html { render action: 'new' }
        format.json { render json: @datasentence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datasentences/1
  # PATCH/PUT /datasentences/1.json
  def update
    respond_to do |format|
      if @datasentence.update(datasentence_params)
        format.html { redirect_to @datasentence, notice: 'Datasentence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @datasentence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datasentences/1
  # DELETE /datasentences/1.json
  def destroy
    @datasentence.destroy
    respond_to do |format|
      format.html { redirect_to datasentences_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datasentence
      @datasentence = Datasentence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datasentence_params
      params.require(:datasentence).permit(:question, :correctanswer, :dummyanswer1, :dummyanswer2, 
        :good_sentence, :bad_sentence1, :bad_sentence2, :bad_sentence3, :pipisode_id, :programsession_id, 
        :story_id, :programmodule_id, :correct_image_name, :correct_image_url, :dummy_image1_name, 
        :dummy_image1_url, :dummy_image2_name, :dummy_image2_url, :correctsentence, :correctword, 
        :correctimage, :question_french, :question_spanish, :question_mandarin, :correct_answer_french, 
        :dummyanswer1_french, :dummyanswer2_french, :correct_answer_spanish, :dummyanswer1_spanish, 
        :dummyanswer2_spanish, :correct_answer_mandarin, :dummyanswer1_mandarin, :dummyanswer2_mandarin, 
        :good_sentence_french, :bad_sentence1_french, :bad_sentence2_french, :bad_sentence3_french, 
        :good_sentence_spanish, :bad_sentence1_spanish, :bad_sentence2_spanish, :bad_sentence3_spanish, 
        :good_sentence_mandarin, :bad_sentence1_mandarin, :bad_sentenece2_mandarin, :bad_sentence3_mandarin)
    end
end
