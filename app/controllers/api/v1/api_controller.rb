# frozen_string_literal: true

module Api::V1
  # Base API Controller
  class ApiController < ApplicationController
    before_action :authenticate_v1_user!
    after_action :verify_authorized
  end
end
