module Jitsu
  class Client
    property host = ""
    property token = ""

    def initialize(@host : String = "", @token : String = "")
    end

    # Set the `@host` instance variable for this client.
    def set_host(host : String)
      @host = host
    end

    # Sets the `@token` instance variable for this client.
    def set_token(token : String)
      @token = token
    end

    # Returns the base url for which this client will make API requests to.
    def base_url : URI
      URI.parse(host)
    end

    # Performs a GET request on the path.
    def get(path : String)
      HTTP::Client.new(base_url).get(path)
    end

    # Performs a POST request on the path with a body.
    def post(path : String, body : String)
      HTTP::Client.new(base_url)
        .post(path, headers: HTTP::Headers{"X-Auth-Token" => @token}, body: body)
    end
  end
end
