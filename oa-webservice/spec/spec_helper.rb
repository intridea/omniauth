require 'rubygems'
require 'spec'
require 'spec/autorun'
require 'rack/test'
require 'webmock/rspec'

include Rack::Test::Methods
include WebMock

require 'omniauth/webservice'

WebMock.disable_net_connect!
