# Ruby modules
require 'json'

# Gems
require 'rack'
require 'rack/routing'
require 'rack/crud'
require 'mongoid'
require 'mustache'
require 'awesome_print'

# Requests
require './requests/foo'

# App
require_relative 'app'
require_relative 'builder'
require_relative 'request_handler'


# Models
require './models/foo'


ROUTES_FILE = 'config/routes.txt'
ROUTES      = Rack::Routing::Router.load_routes

Mongoid.load!( 'config/mongoid.yml', ENV[ 'RACK_ENV' ])
