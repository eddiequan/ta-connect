require_relative "../rails_helper"
require_relative "../spec_helper"

RSpec.describe TaApplicationController, type: :controller do
	describe "POST create" do
	    it "creates applications with all parameters" do
	      post :create, :ta_application => 
	      {
	      	:details => "some stuff", 
	      	user_id: 4, 
	      	course_id: 23, 
	      	previous_ta_experience: "true", 
	      	preferences: 1}

	      post :create, :ta_application => 
	      {
	        :details => "some other stuff", 
	        user_id: 2, 
	        course_id: 23, 
	        previous_ta_experience: "false", 
	        preferences: 1}

	      application = TaApplication.by_course_id(23)
	      expect(application[0].user_id).to eq(4)
	      expect(application[1].user_id).to eq(2)
	      # expect(user.student_number).to eq(1234567890)
	      # expect(user.family_name).to eq("lmao")
	      # expect(user.given_name).to eq("ayy")
	      # expect(user.program).to eq("PHD")
	      # expect(user.year).to eq(8)
	      # expect(user.previous_ta_experience).to eq(true)
	      # expect(user.phone_number).to eq("647-101-8008")
	      # expect(user.work_status).to eq(true)
	      # expect(user.work_status_explain).to eq("Cuz I can")
	      # expect(user.department).to eq("ECE")
	      # expect(user.department_explanation).to eq("Im smart")
	      # expect(user.date_of_application).to eq('2017-02-14 20:12:23')
	  end
	end
end
