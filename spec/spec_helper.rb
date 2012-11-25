# coding: utf-8

ENV['RACK_ENV'] = "test"

require 'rspec'
require 'rack/test'

require File.dirname(__FILE__) + '/../shikakun'

module MyTestMethods
  # http://www.sinatrarb.com/testing.html
  # http://tomiacannondale.hatenablog.com/entry/20110801/1312175754
  def app
    Sinatra::Application
  end
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include MyTestMethods
  config.around(:each) do |example|
    DB.transaction(:rollback=>:always){example.run}
  end
end
