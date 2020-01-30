# frozen_string_literal: true

require "rails_helper"
include ActionController::RespondWith

describe "testing authentication system", type: :request do
  context "user registration" do
    it "allows user to register" do
      post "/v1/auth", params: registration_params.to_json, headers: content_headers
      expect(response.status).to eq(200)
    end

    it "doesn't allow user to register without required params" do
      invalid_reg_params = registration_params[:password_confirmation] = nil
      post "/v1/auth", params: invalid_reg_params.to_json, headers: content_headers
      expect(response.status).to eq(422)
    end

    it "doesn't allow user to register with incorrect password confirmation" do
      invalid_reg_params = registration_params[:password_conirmation] = "invalid"
      post "/v1/auth", params: invalid_reg_params.to_json, headers: content_headers
      expect(response.status).to eq(422)
    end
  end

  context "user login" do
    before(:each) do
      @user = FactoryBot.create(:user)
    end

    it "allows user to login with correct credentials" do
      login_params = {
        email: @user.email,
        password: @user.email
      }
      post v1_user_session_path, params: login_params.to_json, headers: content_headers
      expect(response.status).to eq(200)
    end

    it "doesn't allow user to login with incorrect credentials" do
      login_params = {
        email: @user.email,
        password: "password"
      }
      post v1_user_session_path, params: login_params.to_json, headers: content_headers
      expect(response.status).to eq(401)
    end
  end
end

def registration_params
  {
    email: "test@test.com",
    password: "password",
    password_confirmation: "password"
  }
end

def content_headers
  {
    "CONTENT-TYPE" => "application/json",
    "ACCEPT" => "application/json"
  }
end
