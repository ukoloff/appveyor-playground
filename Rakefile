require 'rake/testtask'

desc 'Run tests'
task :test do
  $LOAD_PATH.unshift File.join __FILE__, '../lib'

  require "minitest/autorun"

  Dir.glob('./test/*.rb'){|f| require f}
end

task default: :test
