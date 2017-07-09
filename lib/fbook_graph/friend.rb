module FbookGraph
  class Friend
    ## Class Methods
    class << self
      def all(search_options, options: {})
        request = Request.new(options)
        data = request.parsed_response['friends']['data']

        friends = data.map { |friend| friend['name'].downcase }

        search_options.each do |key, value|
          case key
          when :start_with
            friends = friends.select { |friend| friend.start_with? value.downcase }
          when :end_with
            friends = friends.select { |friend| friend.end_with? value.downcase }
          end
        end
        friends
      end
    end
  end
end
