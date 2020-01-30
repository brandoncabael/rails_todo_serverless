# frozen_string_literal: true

# Base class for all controllers
class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include Pundit
  protect_from_forgery
end
