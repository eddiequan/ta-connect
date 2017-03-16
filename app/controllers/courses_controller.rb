class CoursesController < ApplicationController
	before_action :set_course, only: [:show, :update, :destroy, :applicants]

  # GET /courses
  def index
    @courses = Course.all

    render json: @courses
  end

  # GET /courses/1
  def show
    render json: @course
  end

  # GET /courses/id/applicants
  def applicants
  	@applications = @course.ta_applications
		applicants = []

		@applications.map do |application|
			applicants.push(get_applicant(application))
		end

  	render json: applicants
  end

	def get_applicant(application)
		return User.find(application.user_id)
	end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_params
      params.require(:course).permit(
        :course_code,
        :description)
    end
end
