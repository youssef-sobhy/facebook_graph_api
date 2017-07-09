require 'net/http'
require 'json'

## iterate over files inside fbook_graph directory and require them.
%w(version configuration client request friend image).each do |file|
  require File.join(File.dirname(__FILE__), 'fbook_graph', file)
end

module FbookGraph
end
