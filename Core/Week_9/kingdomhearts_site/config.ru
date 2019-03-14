require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require_relative 'lib/khapi.rb'
require_relative './app/controllers/static_controller.rb'
require_relative './app/controllers/kh_controller.rb'

use Rack::Reloader
use Rack::MethodOverride

# use StaticController
# run PunkController

run Rack::Cascade.new([
  StaticController,
  PunkController
])
