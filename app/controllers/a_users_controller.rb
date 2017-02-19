class AUsersController < ApplicationController
  before_action :set_a_user, only: [:show, :edit, :update, :destroy]

  # GET /a_users
  # GET /a_users.json
  def index
    @a_users = User.all
  end

  # GET /a_users/1
  # GET /a_users/1.json
  def show
  end

  # GET /a_users/new
  def new
    @a_user = User.new
  end

  # GET /a_users/1/edit
  def edit
  end

  # POST /a_users
  # POST /a_users.json
  def create
    @a_user = User.new(a_user_params)

    respond_to do |format|
      if @a_user.save
        format.html { redirect_to @a_user, notice: 'A user was successfully created.' }
        format.json { render :show, status: :created, location: @a_user }
      else
        format.html { render :new }
        format.json { render json: @a_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /a_users/1
  # PATCH/PUT /a_users/1.json
  def update
    respond_to do |format|
      if @a_user.update(a_user_params)
        format.html { redirect_to @a_user, notice: 'A user was successfully updated.' }
        format.json { render :show, status: :ok, location: @a_user }
      else
        format.html { render :edit }
        format.json { render json: @a_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_users/1
  # DELETE /a_users/1.json
  def destroy
    @a_user.destroy
    respond_to do |format|
      format.html { redirect_to a_users_url, notice: 'A user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a_user
      @a_user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a_user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
