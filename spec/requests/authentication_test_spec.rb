# frozen_string_literal: true

# I've called it authentication_test_spec.rb and placed it in the spec/requests folder
require "rails_helper"
include ActionController::RespondWith

describe "Whether access is ocurring properly", type: :request do
  before(:each) do
    @current_user = FactoryBot.create(:user)
  end

  context "context: general authentication via API, " do
    it "gives you an authentication code if you are an existing user and you satisfy the password" do
      login
      # puts "#{response.headers.inspect}"
      # puts "#{response.body.inspect}"
      expect(response.has_header?("access-token")).to eq(true)
    end

    it "gives you a status 200 on signing in " do
      login
      expect(response.status).to eq(200)
    end
  end

  def login
    post user_session_path, params: { email: @current_user.email, password: @current_user.email }.to_json,
      headers: { "CONTENT_TYPE" => "application/json", "ACCEPT" => "application/json" }
  end

  def get_auth_params_from_login_response_headers(response)
    client = response.headers["client"]
    token = response.headers["access-token"]
    expiry = response.headers["expiry"]
    token_type = response.headers["token-type"]
    uid = response.headers["uid"]

    auth_params = {
      "access-token" => token,
      "client" => client,
      "uid" => uid,
      "expiry" => expiry,
      "token_type" => token_type
    }
    auth_params
  end
end
