module FacebookGraph
  class Client
    ## Attributes
    attr_accessor :token

    ## Constructor
    def initialize(token)
      @token = token
    end

    ## Instance Methods
    def my_images(*albums)
      options = {
        access_token: token,
        fields: 'photos{album,images}'
      }

      Image.all(albums: albums, options: options)
    end

    def my_friends(**search_options)
      options = {
        access_token: token,
        fields: 'friends'
      }

      Friend.all(search_options, options: options)
    end
  end
end
