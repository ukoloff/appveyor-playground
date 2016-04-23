module Minitest
  def self.plugin_appveyor_init options
    self.reporter << AppVeyor.new
  end

  class AppVeyor < AbstractReporter

    def record result
      (@results||=[]).push result
    end

    def report
      puts "results=#{@results.map &:to_s}"
    end
  end
end
