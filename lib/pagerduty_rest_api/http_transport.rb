# frozen_string_literal: true

require 'faraday'

module PagerdutyRestApi
  class HttpTransport
    API_URL = 'https://api.pagerduty.com'

    def get(uri)
      rest_client.get(uri)
    end

    private

    def rest_client
      Faraday.new(url: API_URL) do |faraday|
        faraday.adapter(Faraday.default_adapter)
      end
    end
  end
end
