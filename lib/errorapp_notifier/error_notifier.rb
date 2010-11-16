require 'net/http'
require 'uri'

module ErrorappNotifier
  class ErrorNotifier
    def self.send_fail(notification)
      server_address, api_key = [ErrorappNotifier::Config.server_address, ErrorappNotifier::Config.api_key]
      post_address = "#{server_address}/api/projects/#{api_key}/fails"
    end
  end
end
