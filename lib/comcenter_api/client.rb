module ComcenterApi
  # A class representing a connection to ComcenterApi. It holds the username and password.
  class Client

    # Api key needed for authorized requests.
    # @return [String]
    attr_reader :api_key


    # URL prefix for calling API methods.
    # @return [String]
    attr_reader :url_prefix


    # A new API client.
    # @param [Hash] options API key, API url prefix.
    def initialize(api_key:, url_prefix:)
        @api_key = api_key
        @url_prefix = url_prefix
    end

    # Is a `ComcenterApi::Client` instance authorized.
    def authorized?
      !api_key.nil?
    end

    # Api instance
    # @return [ComcenterApi::Api]
    def api
      @api ||= API.new(client: self)
    end

  end

end
