class QuizquestionsController < ApplicationController
  before_action :set_quizquestion, only: [:show, :edit, :update, :destroy]

  # GET /quizquestions
  # GET /quizquestions.json
  def index
    @quizquestions = Quizquestion.all
  end

  # GET /quizquestions/1
  # GET /quizquestions/1.json
  def show
  end

  # GET /quizquestions/new
  def new
    @quizquestion = Quizquestion.new
  end

  # GET /quizquestions/1/edit
  def edit
  end

  # POST /quizquestions
  # POST /quizquestions.json
  def create
    @quizquestion = Quizquestion.new(quizquestion_params)

    respond_to do |format|
      if @quizquestion.save
        format.html { redirect_to @quizquestion, notice: 'Quizquestion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @quizquestion }
      else
        format.html { render action: 'new' }
        format.json { render json: @quizquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizquestions/1
  # PATCH/PUT /quizquestions/1.json
  def update
    respond_to do |format|
      if @quizquestion.update(quizquestion_params)
        format.html { redirect_to @quizquestion, notice: 'Quizquestion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @quizquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizquestions/1
  # DELETE /quizquestions/1.json
  def destroy
    @quizquestion.destroy
    respond_to do |format|
      format.html { redirect_to quizquestions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quizquestion
      @quizquestion = Quizquestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quizquestion_params
      params.require(:quizquestion).permit(:question, :correctanswer, :dummyanswer1, :dummyanswer2, 
        :pipisode_id, :programsession_id, :story_id, :porgrammodule_id, :image, :question_french, 
        :question_spanish, :question_mandarin, :correct_answer_french, :correct_answer_spanish, 
        :correct_answer_mandarin, :dummyanswer1_french, :dummyanswer1_spanish, :dummyanswer1_mandarin, 
        :dummyanswer2_french, :dummyanswer2_spanish, :dummyanswer2_mandarin)
    end
end
