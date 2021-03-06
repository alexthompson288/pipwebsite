class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :create, :new]
  before_filter :authenticate_admin!, only: [:index]
  # before_filter :authenticate_user!, only: [:show, :edit]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show

  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to mypage_path
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    account_name = Time.now.to_s + '_' + @user.first_name
    @user.update_attributes(:account_username => account_name)

    respond_to do |format|
      if @user.save
        if @user.program_requested
          if @user.user_type == 'teacher'
            UserMailer.new_user_update(@user).deliver
            @user.invite_received = true
            @user.save
          elsif @user.user_type == 'parent'
            UserMailer.new_user_update(@user).deliver
            @user.invite_received = true
            @user.save
          end
        end

        format.html { redirect_to @user }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to mypage_path, notice: 'user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params[:user]
    end
end
