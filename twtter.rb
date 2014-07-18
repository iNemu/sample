#!/usr/bin/ruby
require 'twitter'

Twitter.configure do |config|
  config.consumer_key = "app_consumer_key"
  config.consumer_secret = "app_consumer_secret"
end
@client = Twitter::Client.new(
  :oauth_token => "user_access_token",
  :oauth_token_secret => "user_access_token_secret"
)
@client.update ARGV[0]
