require 'json'
require 'net/http'

module AppVeyor
  module Worker

    def self.message msg, details=nil
      x = api or return
      body = JSON.generate category: 'info',
        message: msg,
        details: details
      x.post '/api/build/messages',
        body,
        'Content-Length'=>body.length,
        'Content-Type'=>'application/json'
    end

    private

    def self.api
      return if false===@http
      return @http if @http
      unless z = ENV['APPVEYOR_API_URL']
        @http = false
        return
      end
      z = URI z
      @http = x = Net::HTTP.start z.host, z.port
      x.use_ssl='https'==z.scheme
      x
    end

    def self.skip!
      unless @skipped
        @skipped = true
        puts "AppVeyor Build Worker API not found!"
      end
      nil
    end

  end
end
