class PunkController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
    register Sinatra::Reloader
  end

  # route to view all beers
  get '/punk' do
    @beers = PunkAPI.new.punk_index_service
    erb :'punk/index'
  end

  # Show page for 1 beer
  get '/punk/:id' do
    id = params[:id].to_i

    @beer = PunkAPI.new.punk_show_service.get_beer id
    @brew_date = Date.parse(@beer.first["first_brewed"]).strftime("%B %Y")

    @beer = @beer.first
    erb :'punk/show'
  end

end
