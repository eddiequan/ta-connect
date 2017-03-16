class TaApplicationController < ApplicationController
	before_action :set_application, only: [:show, :update, :destroy]

  # GET /applications
	def index
		@applications = TaApplication.all

		render json: @applications
	end

	# GET /applications/1
	def show
		render json: @application
	end

	# POST /applications
	def create
		@application = TaApplication.new(application_params)

		if @application.save
			render json: @application, status: :created, location: @application
		else
			render json: @application.errors, status: :unprocessable_entity
		end
	end

	# PATCH/PUT /applications/1
	def update
		if @application.update(application_params)
			render json: @application
		else
			render json: @application.errors, status: :unprocessable_entity
		end
	end

	# DELETE /applications/1
	def destroy
		@application.destroy
	end

	def profile
		render json: @current_application
	end

	# GET applicattions/course_id
	def all

	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_application
		@application = TaApplication.find(params[:id])
	end

	# Only allow a trusted parameter "white list" through.
	def application_params
		params.require(:ta_application).permit(
		:details, 
		:user_id, 
		:course_id,
		:previous_ta_experience,
		:preferences)
	end
end
