require "sinatra"
require "sinatra/reloader"
require_relative "controllers/post-controller.rb"

run PostController
