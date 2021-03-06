# frozen_string_literal: true

Rails.application.routes.draw do
  scope module: "api" do
    namespace :v1 do
      mount_devise_token_auth_for "User", at: "auth"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
