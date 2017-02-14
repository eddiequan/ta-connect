require_relative "../rails_helper"
require_relative "../spec_helper"

RSpec.describe UsersController, type: :controller do
	describe "GET index" do
    it "returns all users" do
      user = User.create!(email: "blah@gmail.com", password: "blah", password_confirmation: "blah")
      get :index
      expect(response.body).to include("blah@gmail.com")
    end
  end

  describe "POST create" do
    it "creates a user with all parameters" do
      post :create, :user => {:email => "blah@gmail.com", password: "blah", password_confirmation: "blah", studentnumber: "1234567890"}

      user = User.by_email("blah@gmail.com")
      expect(user.email).to eq("blah@gmail.com")
      expect(user.studentnumber).to eq(1234567890)
    end
  end
end