require 'net/http'
require 'uri'

module ErrorappNotifier
  class ErrorNotifier
    def self.send_fail(notification)
      puts "Sending error to #{ErrorappNotifier::Config.server_address}"
      server_address, api_key = [ErrorappNotifier::Config.server_address, ErrorappNotifier::Config.api_key]
      post_address = "#{server_address}/api/projects/#{api_key}/fails"
      Net::HTTP.post_form URI.parse(post_address), {:data => notification.to_json}
    end
  end
end
