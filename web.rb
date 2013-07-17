require 'sinatra'
require 'dalli'
require 'rack/cache'

use Rack::Cache,
  :verbose => true,
  :metastore   => "memcached://185.14.186.135:11211/meta",
  :entitystore => "memcached://185.14.186.135:11211/body"


get '/' do
  cache_control :public, :max_age => 3600
  "Hello, world"
end

get '/mu-c9478619-b3ea1fef-e218a7ee-09081759' do
  '42'
end