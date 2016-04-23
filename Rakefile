require 'rake/testtask'

desc 'Run tests'
task :test do
  $LOAD_PATH.unshift 'test'

  require "minitest/autorun"

  Dir.glob('./test/*.rb'){|f| require f}
end

task default: :test
