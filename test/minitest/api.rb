require 'json'

module AppVeyor
  module Worker

    def self.api
      ENV['APPVEYOR_API_URL'] || skip!
    end

    def self.message msg, details=nil
      x = api or return
    end

    private

    def self.skip!
      unless @skipped
        @skipped = true
        puts "AppVeyor Build Worker API not found!"
      end
      nil
    end

  end
end
