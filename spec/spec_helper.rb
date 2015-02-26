require 'rack'
require 'rspec'
require 'rack/test'
require 'capybara/rspec'

ENV[ 'RACK_ENV'   ] = 'test'

require './app/init'


Capybara.app = app
Capybara.save_and_open_page_path = './tmp'


RSpec.configure do |config|
  config.filter_run focus:true
  config.run_all_when_everything_filtered = true
  config.color = true

  include Rack::Test::Methods

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
