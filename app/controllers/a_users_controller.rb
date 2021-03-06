class AUsersController < ApplicationController
  before_action :set_a_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /a_users
  # GET /a_users.json
  def index

  if current_user.role == "admin"
    @a_users = User.paginate(:page => params[:page], :per_page => 3)
  elsif current_user.role == "center"
    @a_users = User.where("role = ?", "student").where("center_name = ?", current_user.center_name).paginate(:page => params[:page], :per_page => 3)
else
  end
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
    @a_user = User.find(params[:id])

  end

  # POST /a_users
  # POST /a_users.json
  def create
    @a_user = User.new(a_user_params)

    respond_to do |format|
      if @a_user.save(validate: false)
        format.html { redirect_to a_users_path, notice: 'A user was successfully created.' }
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
        format.html { redirect_to a_users_path, notice: 'A user was successfully updated.' }
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
      params.require(:user).permit(:email, :password, :password_confirmation, :role , :user_id, :center_name, :course_name, :student_name, :dob, :qualification, :state_name, :address, :mobile_number, :center_code, :center_place, :admission_date, :gender, :nationality, :district_name, :pincode, :active)
    end
end
