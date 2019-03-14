require "sinatra"
require "sinatra/reloader" if development?

# INDEX
get "/" do
  "<h1> Homepage</h1>"
end

#NEW
get "/new" do
  "<h1> This is where you can make new blogs</h1>"
end

#SHOW
get "/:id" do

  id = params[:id]
  "SHOW: #{id}"
end

#EDIT
get "/:id/edit" do
  "<h1>EDIT: #{params[:id]}</h1>"
end

#CREATE
post "/" do
  "<h1>Create</h1>"
end

#UPDATE
put "/:id" do
  "<h1>Update: #{params[:id]}</h1>"
end

#DELETE
delete "/" do
  "<h1>Delete: #{params[:id]}</h1>"
end
