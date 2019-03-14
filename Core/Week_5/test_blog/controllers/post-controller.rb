class PostController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # Set root as the parent-directory of the current File
  set :root, File.join(File.dirname(__FILE__),'..')

  # Set root as the parent-directory of the current File
  set :views, Proc.new { File.join(root, "views")}

  $posts = [{
    id:0,
    title: "Apples",
    body: "This is a fruit"
    },
    {
    id: 1,
    title: "Tomato",
    body: "This is also a fruit"
    },
    {id: 2,
    title: "Carrot",
    body: "This is a vegetable"
    }]

  get "/" do
    @title = "practice-blogs"
    @posts = $posts
    erb :'posts/index'
  end

  get "/new" do
    @title = "Add a new fruit or vegetable"
    erb :'posts/new'
  end

  get "/:id" do
    id = params[:id]
    "This is updates based of the site id: #{id}"
    erb :'posts/dynamic'
  end

  # get "/:id/edit" do
  #
  # end
  #
  # post "/" do
  #
  # end
  #
  # put ""
end
