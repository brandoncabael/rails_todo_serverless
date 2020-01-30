# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.7"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 6.0.2", ">= 6.0.2.1"
# Use postgresql as the database for Active Record
gem "pg", ">= 0.18", "< 2.0"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem "lamby", require: false
gem "aws-sdk-ssm"
gem "devise_token_auth"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "rubocop", "~> 0.79.0", require: false
  gem "rubocop-rspec", require: false
  gem "rubocop-rails", require: false
  gem "rspec-rails", "~> 3.9"
  gem "rubocop-rails_config"
  gem "reek", require: false
  gem "brakeman", require: false
  gem "bundler-audit", require: false
  gem "factory_bot_rails"
  gem "faker", github: "faker-ruby/faker", branch: "master"
  gem "database_cleaner"
end

group :development do
  gem "awesome_print"
  gem "guard-rspec", require: false
end

group :test do
  gem "shoulda-matchers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
