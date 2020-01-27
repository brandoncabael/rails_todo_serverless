# frozen_string_literal: true

task :brakeman do
  sh "brakeman -A"
end
