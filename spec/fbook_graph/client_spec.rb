require 'spec_helper'

describe FbookGraph::Client do
  describe 'initialize a client' do
    it 'should be able to initialize a client with access token' do
      client = FbookGraph::Client.new(access_token)
      expect(client.token).to eq access_token
    end

    it 'should raise an error when no access token is provided' do
      expect { FbookGraph::Client.new }.to raise_error(ArgumentError)
    end
  end
end
