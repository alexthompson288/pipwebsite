class LearninggamesController < ApplicationController
  before_action :set_learninggame, only: [:show, :edit, :update, :destroy]

  # GET /learninggames
  # GET /learninggames.json
  def index
    @learninggames = Learninggame.all
    @stages = Stage.order(:number)
  end

  # GET /learninggames/1
  # GET /learninggames/1.json
  def show
  end

  # GET /learninggames/new
  def new
    @learninggame = Learninggame.new
  end

  # GET /learninggames/1/edit
  def edit
  end

  # POST /learninggames
  # POST /learninggames.json
  def create
    @learninggame = Learninggame.new(learninggame_params)

    respond_to do |format|
      if @learninggame.save
        format.html { redirect_to @learninggame, notice: 'Learninggame was successfully created.' }
        format.json { render action: 'show', status: :created, location: @learninggame }
      else
        format.html { render action: 'new' }
        format.json { render json: @learninggame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /learninggames/1
  # PATCH/PUT /learninggames/1.json
  def update
    respond_to do |format|
      if @learninggame.update(learninggame_params)
        format.html { redirect_to @learninggame, notice: 'Learninggame was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @learninggame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learninggames/1
  # DELETE /learninggames/1.json
  def destroy
    @learninggame.destroy
    respond_to do |format|
      format.html { redirect_to learninggames_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_learninggame
      @learninggame = Learninggame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def learninggame_params
      params.require(:learninggame).permit(:name, :skill, :learningobjective, :instructions, :resources, :extension, :video, :stage_id)
    end
end
