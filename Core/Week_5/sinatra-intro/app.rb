require "sinatra"
require "sinatra/reloader" if development?
# require "sinatra/countrib"

get '/' do
  index
end

get '/random' do
  array = [1,2,3,4]
  "This is a random page with an array: #{array}"
end

def index
  "Hello world,this page has been updated"
end
