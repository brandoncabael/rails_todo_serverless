# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    provider { "email" }
    password  { "password" }
    password_confirmation { "password" }
    email { "test@test.com" }
  end
end
