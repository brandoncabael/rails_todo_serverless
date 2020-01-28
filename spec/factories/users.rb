# frozen_string_literal: true

FactoryBot.define do
  faker_credentials = Faker::Internet.email
  factory :user do
    provider { "email" }
    password  { faker_credentials }
    password_confirmation { faker_credentials }
    email { faker_credentials }
    uid { faker_credentials }
  end
end
