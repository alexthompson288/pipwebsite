class GlossarytermsController < ApplicationController
  before_filter :authenticate_admin!
  before_action :set_glossaryterm, only: [:show, :edit, :update, :destroy]

  # GET /glossaryterms
  # GET /glossaryterms.json
  def index
    @glossaryterms = Glossaryterm.all
  end

  # GET /glossaryterms/1
  # GET /glossaryterms/1.json
  def show
  end

  # GET /glossaryterms/new
  def new
    @glossaryterm = Glossaryterm.new
  end

  # GET /glossaryterms/1/edit
  def edit
  end

  # POST /glossaryterms
  # POST /glossaryterms.json
  def create
    @glossaryterm = Glossaryterm.new(glossaryterm_params)

    respond_to do |format|
      if @glossaryterm.save
        format.html { redirect_to @glossaryterm, notice: 'Glossaryterm was successfully created.' }
        format.json { render action: 'show', status: :created, location: @glossaryterm }
      else
        format.html { render action: 'new' }
        format.json { render json: @glossaryterm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glossaryterms/1
  # PATCH/PUT /glossaryterms/1.json
  def update
    respond_to do |format|
      if @glossaryterm.update(glossaryterm_params)
        format.html { redirect_to @glossaryterm, notice: 'Glossaryterm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @glossaryterm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glossaryterms/1
  # DELETE /glossaryterms/1.json
  def destroy
    @glossaryterm.destroy
    respond_to do |format|
      format.html { redirect_to glossaryterms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glossaryterm
      @glossaryterm = Glossaryterm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glossaryterm_params
      params.require(:glossaryterm).permit(:term, :description)
    end
end
