require 'rack'
require 'rspec'
require 'rack/test'
require 'capybara/rspec'

ENV[ 'RACK_ENV' ] = 'test'

require './app/init'

RSpec.configure do |config|
  config.filter_run focus:true
  config.run_all_when_everything_filtered = true
  config.color = true

  config.include Rack::Test::Methods
  config.include Capybara::DSL

  config.backtrace_exclusion_patterns = [
    /\/lib\d*\/ruby\//,
    /bin\//,
    /gems/,
    /spec\/spec_helper\.rb/,
    /lib\/rspec\/(core|expectations|matchers|mocks)/
  ]

  config.before( :each ) do
    Mongoid.purge!
  end
end

Capybara.configure do |config|
  config.app = app
  # config.default_driver = :selenium_chrome
  config.javascript_driver = :selenium_chrome_headless
  config.save_path = 'tmp/capybara'
end
