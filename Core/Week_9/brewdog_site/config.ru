require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require_relative 'lib/punkapi.rb'
require_relative './app/controllers/static_controller.rb'
require_relative './app/controllers/punk_controller.rb'

use Rack::Reloader
use Rack::MethodOverride

# use StaticController
# run PunkController

run Rack::Cascade.new([
  StaticController,
  PunkController
])
