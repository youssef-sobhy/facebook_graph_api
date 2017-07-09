module FacebookGraph
  class Request
    ## Attributes
    attr_accessor :response

    ## Constructor
    def initialize(**options)
      url = Configuration::BASE_URL
      uri = URI(url)
      uri.query = URI.encode_www_form(options)

      @response = Net::HTTP.get(uri)
    end

    ## Instance Methods
    def parsed_response
      JSON.parse(response)
    end
  end
end
