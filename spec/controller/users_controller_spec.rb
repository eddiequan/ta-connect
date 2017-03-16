require_relative "../rails_helper"
require_relative "../spec_helper"

RSpec.describe UsersController, type: :controller do
	describe "GET index" do
    it "returns all users" do
      user = User.create!(utorid: "blah@gmail.com", password: "blah", password_confirmation: "blah")
      get :index
      expect(response.body).to include("blah@gmail.com")
    end
  end

  describe "POST create" do
    it "creates a user with all parameters" do
      post :create, params: { user:
      {
      	:utorid => "blah@gmail.com",
      	password: "blah",
      	password_confirmation: "blah",
      	student_number: "1234567890",
      	family_name: "lmao",
      	given_name: "ayy",
      	program: "PHD",
      	year: "8",
      	previous_ta_experience: "true",
      	phone_number: "647-101-8008",
      	work_status: "true",
      	work_status_explain: "Cuz I can",
      	department: "ECE",
      	department_explanation: "Im smart",
      	date_of_application: "2017-02-14 20:12:23"}
			}

      user = User.by_utorid("blah@gmail.com")
      expect(user.utorid).to eq("blah@gmail.com")
      expect(user.student_number).to eq(1234567890)
      expect(user.family_name).to eq("lmao")
      expect(user.given_name).to eq("ayy")
      expect(user.program).to eq("PHD")
      expect(user.year).to eq(8)
      expect(user.previous_ta_experience).to eq(true)
      expect(user.phone_number).to eq("647-101-8008")
      expect(user.work_status).to eq(true)
      expect(user.work_status_explain).to eq("Cuz I can")
      expect(user.department).to eq("ECE")
      expect(user.department_explanation).to eq("Im smart")
      expect(user.date_of_application).to eq('2017-02-14 20:12:23')
    end
  end

	describe "GET show" do
		it "shows a single user" do
			user = User.create!(utorid: "blah@gmail.com", password: "blah", password_confirmation: "blah")
			get :show, params: {id: user.id}

			expect(response.body).to include("blah@gmail.com")
		end
	end
end
