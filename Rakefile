require 'rake/testtask'

desc 'Run tests'
task :test do
  require "minitest/autorun"

  Dir.glob('./test/*.rb'){|f| require f}
end

task default: :test
