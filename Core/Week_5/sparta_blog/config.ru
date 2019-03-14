require "sinatra"
require "sinatra/reloader"
require_relative "controllers/posts_controller.rb"

use Rack::MethodOverride

run PostController
