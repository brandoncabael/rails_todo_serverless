# frozen_string_literal: true

task ci: :reek
task ci: :rubocop
task ci: :brakeman
task ci: :audit
task ci: :rspec
