# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do
  it { should validate_presence_of(:provider) }
  it { should validate_presence_of(:encrypted_password) }
  it { should validate_presence_of(:email) }
end
