class PunkController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
    register Sinatra::Reloader
  end

  # route to view all characters
  get '/punk' do
    @characters = KingdomHeartsAPI.new.kh_index_service
    erb :'kh/index'
  end

  # Show page for 1 character
  get '/punk/:id' do
    id = params[:id].to_i

    @character = KingdomHeartsAPI.new.kh_show_service.get_char id
    @brew_date = Date.parse(@character.first["first_brewed"]).strftime("%B %Y")

    @character = @character.first
    erb :'kh/show'
  end

end
