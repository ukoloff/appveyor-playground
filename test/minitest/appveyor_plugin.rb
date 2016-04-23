require 'yaml'
require_relative 'api'

module Minitest
  def self.plugin_appveyor_init options
    self.reporter << AppVeyor.new
  end

  class AppVeyor < AbstractReporter

    def record result
      ::AppVeyor::Worker.test testFramework: 'Mocha',
        testName: result.name,
        fileName: result.class.name,
        outcome: result.skipped? ? 'Ignored' : result.passed? ? 'Passed' : 'Failed',
        durationMilliseconds: result.time,
        ErrorStackTrace: (result.failure.backtrace rescue nil),
        StdOut: YAML.dump('assertions'=>result.assertions, 'failures'=>result.failures)
    end

    def report
      puts "results=#{@results.to_json}"
    end
  end
end
