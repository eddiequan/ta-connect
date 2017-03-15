class CoursesController < ApplicationController
	before_action :set_course, only: [:show, :update, :destroy]

  # GET /users
  def index
    @courses = Course.all

    render json: @courses
  end

  # GET /users/1
  def show
    render json: @course
  end

  # POST /users
  def create
    @course = Course.new(user_params)

    if @course.save
      render json: @course, status: :created, location: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @course.update(user_params)
      render json: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @course.destroy
  end

  def profile
    render json: @current_course
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:course).permit(
        :utorid, 
        :password, 
        :password_confirmation,
        :student_number,
        :family_name,
        :given_name,
        :program,
        :year,
        :previous_ta_experience,
        :phone_number,
        :work_status,
        :work_status_explain,
        :department,
        :department_explanation,
        :date_of_application)
    end
end
