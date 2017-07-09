module FacebookGraph
  module Configuration
    ## BASE URLS AND API VERSION
    GRAPH_URL = 'https://graph.facebook.com/'.freeze
    VERSION = 'v2.9'.freeze
    BASE_URL = GRAPH_URL + VERSION + '/me'
  end
end
