module FacebookGraph
  class Image
    ## Class Methods
    class << self
      def all(albums: [], options: {})
        request = Request.new(options)
        data = request.parsed_response['photos']['data']
        images = []

        if albums.empty?
          images = data
        else
          albums.each do |album|
            data.each do |image|
              if image['album']
                images << image if image['album']['name'].include? album.capitalize
              end
            end
          end
        end

        images.map { |image| image['images'][0]['source'] }
      end
    end
  end
end
