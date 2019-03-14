class PostController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # Set root as the parent-directory of the current File
  set :root, File.join(File.dirname(__FILE__),'..')

  # Set root as the parent-directory of the current File
  set :views, Proc.new { File.join(root, "views")}

  $posts =[{
    id: 0,
    title: "Post 1",
    body: "This is the first post"
    },{
    id: 1,
    title: "Post 2",
    body: "This is the second post"
    },{
    id: 2,
    title: "Post 3",
    body: "This is the third post"
    }]

  # INDEX
  get "/" do
    @posts = $posts
    erb :'posts/index'
  end

  #NEW
  get "/new" do
    @post = {
      id: "",
      title: "",
      body: ""
    }
    erb :'posts/new'
  end

  #SHOW
  get "/:id" do
    id = params[:id].to_i
    @post = $posts[id]
    erb :"posts/show"
  end

  #EDIT
  get "/:id/edit" do
    id = params[:id].to_i
    @post = $posts[id]
    erb :"posts/edit"
  end

  #CREATE
  post "/" do
    newpost = {
      id: $posts.length,
      title: params[:title],
      body: params[:body]
    }

    $posts.push newpost

    redirect "/"
  end

  #UPDATE
  put "/:id" do
    id = params[:id].to_i

    post = $posts[id]

    post[:title] = params[:title]
    post[:body] = params[:body]

    $posts[id] = post

    redirect "/#{id}"
  end

  #DELETE
  delete "/:id" do
    id = params[:id].to_i

    $posts.delete_at id

    redirect "/"
  end



end
