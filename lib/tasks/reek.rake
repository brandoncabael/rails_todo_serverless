# frozen_string_literal: true

task :reek do
  sh "reek app"
  sh "reek config"
  sh "reek spec"
end
