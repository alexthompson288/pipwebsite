class StorypagesController < ApplicationController
  before_action :set_storypage, only: [:show, :edit, :update, :destroy]

  # GET /storypages
  # GET /storypages.json
  def index
    @storypages = Storypage.all
  end

  # GET /storypages/1
  # GET /storypages/1.json
  def show
  end

  # GET /storypages/new
  def new
    @storypage = Storypage.new
  end

  # GET /storypages/1/edit
  def edit
  end

  # POST /storypages
  # POST /storypages.json
  def create
    @storypage = Storypage.new(storypage_params)

    respond_to do |format|
      if @storypage.save
        format.html { redirect_to @storypage, notice: 'Storypage was successfully created.' }
        format.json { render action: 'show', status: :created, location: @storypage }
      else
        format.html { render action: 'new' }
        format.json { render json: @storypage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storypages/1
  # PATCH/PUT /storypages/1.json
  def update
    respond_to do |format|
      if @storypage.update(storypage_params)
        format.html { redirect_to @storypage, notice: 'Storypage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @storypage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storypages/1
  # DELETE /storypages/1.json
  def destroy
    @storypage.destroy
    respond_to do |format|
      format.html { redirect_to storypages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storypage
      @storypage = Storypage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def storypage_params
      params.require(:storypage).permit(:story_id, :text, :image, :audio, :pageorder, 
        :frenchtext, :spanishtext, :mandarintext, :germantext)
    end
end
