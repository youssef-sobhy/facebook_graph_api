# FbookGraph
[![Build Status](https://travis-ci.org/youssef1337/facebook_graph_api.svg?branch=master)](https://travis-ci.org/youssef1337/facebook_graph_api)

This gem provides a Ruby wrapper around the Facebook Graph API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fbook_graph'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fbook_graph

## Usage

Register a new client

```ruby
client = FbookGraph::Client.new(access_token)
```
### Get your friends

`client.my_friends`

`my_friends` method takes an optional argument `start_with: ` or `end_with:`

### Get your images

`client.my_images`

`my_images` takes an optional argument of the album name. Ex. 'cover', 'profile', 'instagram'.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/fbook_graph.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
