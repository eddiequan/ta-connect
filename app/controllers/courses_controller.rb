require 'rest-client'
require 'json'

class CoursesController < ApplicationController

  # GET /courses
  def index
    @test = RestClient.get "http://localhost:8080/courses"
    render json: @test.body
  end

  # GET /courses/1
  def show
    @info = RestClient.get "http://localhost:8080/courses/#{params[:id]}"
    render json: @info.body
  end

  # GET /course/id/applicants
  def applicants
  	@applications = TaApplication.where(:course_id => params[:id])
    applicants = []
    @applications.map do |application|
      applicants.push(get_applicant(application))
    end

    render json: applicants
  end

	def get_applicant(application)
		return User.find(application.user_id)
	end
end
