class PipusersController < ApplicationController
  before_action :set_pipuser, only: [:show, :edit, :update, :destroy]

  # GET /pipusers
  # GET /pipusers.json
  def index
    @pipusers = Pipuser.all
  end

  # GET /pipusers/1
  # GET /pipusers/1.json
  def show
  end

  # GET /pipusers/new
  def new
    @pipuser = Pipuser.new
  end

  # GET /pipusers/1/edit
  def edit
  end

  # POST /pipusers
  # POST /pipusers.json
  def create
    @pipuser = Pipuser.new(pipuser_params)

    respond_to do |format|
      if @pipuser.save
        format.html { redirect_to @pipuser, notice: 'Pipuser was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pipuser }
      else
        format.html { render action: 'new' }
        format.json { render json: @pipuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pipusers/1
  # PATCH/PUT /pipusers/1.json
  def update
    respond_to do |format|
      if @pipuser.update(pipuser_params)
        format.html { redirect_to @pipuser, notice: 'Pipuser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pipuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pipusers/1
  # DELETE /pipusers/1.json
  def destroy
    @pipuser.destroy
    respond_to do |format|
      format.html { redirect_to pipusers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pipuser
      @pipuser = Pipuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pipuser_params
      params.require(:pipuser).permit(:first_name, :last_name, :account_username, :ip_address, :country, :postcode, :email, :encrypted_password, :password_confirmation, :password)
    end
end
