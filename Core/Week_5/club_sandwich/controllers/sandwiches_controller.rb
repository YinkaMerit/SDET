class SandwichesController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  helpers Sinatra::Cookies

  set :sessions, true

  # Set root as the parent-directory of the current File
  set :root, File.join(File.dirname(__FILE__),'..')

  # Set root as the parent-directory of the current File
  set :views, Proc.new { File.join(root, "views")}
  #
  # $sandwiches = [{
  #   id: 0,
  #   title: "Beef and Horseradish",
  #   description: "Its soooo good!!! - Tom 2019",
  #   image: "images/beef_sandwich.jpg"
  #   },{
  #   id: 1,
  #   title: "Cheese and Pickle",
  #   description: "Is a tangy cheesey treat - Tom 2019",
  #   image: "images/cheese_sandwich.jpg"
  #   },{
  #   id: 2,
  #   title: "BLT",
  #   description: "Healthy......but kinda not - Tom 2019",
  #   image: "images/blt_sandwich.jpeg"
  #   },{
  #   id: 3,
  #   title: "Onion Bhaji",
  #   description: "They're vegan!",
  #   image: "images/bhaji_sandwich.png"
  #     }]

  #Index
  get "/" do
    unless cookies[:visited]
      @message = true

      # cookies[:visted] = 1
      response.set_cookie(:visited, :value => 1, :expires => Time.now + 10)
    end

    @sandwiches = Sandwich.all
    erb :"sandwiches/index"
  end

  #New
  get "/new" do
    #Create an empty sandwich
    @sandwich = Sandwich.new
    erb :"sandwiches/new"
  end

  #Show
  get "/:id" do
    id = params[:id].to_i

    @sandwich = Sandwich.find id

    if !session[:sandwiches]
      session[:sandwiches] = []
    end

    if !session[:sandwiches].include? @sandwich.title
      session[:sandwiches].push @sandwich.title
    end

    print session[:sandwiches]


    erb :"sandwiches/show"
  end

  #Edit
  get "/:id/edit" do
    id = params[:id].to_i
    @sandwich = Sandwich.find id

    erb :"sandwiches/edit"
  end

  #Create
  post '/' do
    sandwich = Sandwich.new

    sandwich.title = params[:title]
    sandwich.description = params[:description]

    sandwich.save

    redirect "/"
  end

  put "/:id" do
    id = params[:id].to_i

    sandwich =  Sandwich.find id

    sandwich.title = params[:title]
    sandwich.description = params[:description]


    sandwich.save

    redirect "/#{id}"
  end

  delete "/:id" do
    id = params[:id].to_i

    Sandwich.destroy id

    redirect "/"
  end
end
