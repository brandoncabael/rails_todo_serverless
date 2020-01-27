# frozen_string_literal: true

task :rubocop do
  sh "rubocop"
end

task :rubocop_autofix do
  sh "rubocop -a"
end
