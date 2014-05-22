class ProgrammodulesController < ApplicationController
  before_action :set_programmodule, only: [:show, :edit, :update, :destroy]

  # GET /programmodules
  # GET /programmodules.json
  def index
    @programmodules = Programmodule.where(:programmename => "Reading1")
  end

  # GET /programmodules/1
  # GET /programmodules/1.json
  def show
    @programsessions = Programsession.where(:programmodule_id => @programmodule.cms_id)
  end

  # GET /programmodules/new
  def new
    @programmodule = Programmodule.new
  end

  # GET /programmodules/1/edit
  def edit
  end

  # POST /programmodules
  # POST /programmodules.json
  def create
    @programmodule = Programmodule.new(programmodule_params)

    respond_to do |format|
      if @programmodule.save
        format.html { redirect_to @programmodule, notice: 'Programmodule was successfully created.' }
        format.json { render action: 'show', status: :created, location: @programmodule }
      else
        format.html { render action: 'new' }
        format.json { render json: @programmodule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programmodules/1
  # PATCH/PUT /programmodules/1.json
  def update
    respond_to do |format|
      if @programmodule.update(programmodule_params)
        format.html { redirect_to @programmodule, notice: 'Programmodule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @programmodule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programmodules/1
  # DELETE /programmodules/1.json
  def destroy
    @programmodule.destroy
    respond_to do |format|
      format.html { redirect_to programmodules_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programmodule
      @programmodule = Programmodule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programmodule_params
      params.require(:programmodule).permit(:number, :colour, :phaselevel, :programmename, :cms_id)
    end
end
