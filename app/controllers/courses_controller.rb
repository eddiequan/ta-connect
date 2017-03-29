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
    applicants = []
  	@applications = TaApplication.where(:course_id => params[:id])
    @applications.map do |application|
      applicants.push(get_applicant(application))
    end

    render json: applicants
  end

  #GET /course/id/applications
  def applications
    @all_applications = TaApplication.where(:course_id => params[:id])

    render json: @all_applications

  end

	def get_applicant(application)
		return User.find(application.user_id)
	end
end
