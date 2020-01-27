# frozen_string_literal: true

# Base class for all controllers
class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
end
