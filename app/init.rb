# Gems
require 'rack'
require 'rack/routing'

# App
require_relative 'app'
require_relative 'builder'
require_relative 'request'
require_relative 'route_handler'

# Ruby modules
require 'json'

ROUTES_FILE = 'config/routes.txt'
ROUTES = Router.load_routes
