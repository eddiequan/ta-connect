require_relative "../rails_helper"
require_relative "../spec_helper"

RSpec.describe CoursesController, type: :controller do

	describe "GET index" do
	    it "returns all users" do
	      user = User.create!(utorid: "blah@gmail.com", password: "blah", password_confirmation: "blah")
	      user2 = User.create!(utorid: "ah@gmail.com", password: "blah", password_confirmation: "blah")
	      app1 = TaApplication.create!(user_id: user2.id, course_id: "1")
	      app2 = TaApplication.create!(user_id: user.id, course_id: "1")


				get :applicants, params: {id: "1" }
	      expect(response.body).to include("blah@gmail.com")
	      expect(response.body).to include("ah@gmail.com")
	    end
	end

	describe "GET applications" do
		it "returns all applications for course" do
			user = User.create!(utorid: "blah@gmail.com", password: "blah", password_confirmation: "blah")
	      	user2 = User.create!(utorid: "ah@gmail.com", password: "blah", password_confirmation: "blah")

			app1 = TaApplication.create!(user_id: user2.id, course_id: "1")
	      	app2 = TaApplication.create!(user_id: user.id, course_id: "2") 

      		get :applications, params: {id: "1"}
	      	expect(response.body) .to include("1")
	      	expect(response.body) .to eq(user2.id)
	    end
	end
end