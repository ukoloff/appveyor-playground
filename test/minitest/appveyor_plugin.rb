require_relative 'api'

module Minitest
  def self.plugin_appveyor_init options
    self.reporter << AppVeyor.new
  end

  class AppVeyor < AbstractReporter

    def record result
      (@results||=[]).push result
    end

    def report
      puts "results=#{@results.to_json}"
    end
  end
end
