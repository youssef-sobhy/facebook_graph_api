require 'net/http'
require 'json'

## iterate over files inside facebook_graph directory and require them.
%w(version configuration client request friend image).each do |file|
  require File.join(File.dirname(__FILE__), 'facebook_graph', file)
end

module FacebookGraph
end
