# frozen_string_literal: true

task :audit do
  sh "bundle audit check --update"
end
