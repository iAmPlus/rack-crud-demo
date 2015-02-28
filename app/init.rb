# Ruby modules
require 'json'

# Gems
require 'rack'
require 'rack/routing'
require 'mongoid'
require 'mustache'
require 'awesome_print'

# Requests
require './requests/crud'
require './requests/foo'

# App
require_relative 'app'
require_relative 'builder'
require_relative 'request'
require_relative 'route_handler'
require_relative 'response'

# CRUD
require './models/crud_model'

# Models
require './models/foo'


ROUTES_FILE = 'config/routes.txt'
ROUTES      = Rack::Routing::Router.load_routes

Mongoid.load!('config/mongoid.yml', ENV[ 'RACK_ENV' ])
