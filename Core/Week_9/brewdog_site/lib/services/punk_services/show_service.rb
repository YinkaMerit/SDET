class PunkShowService
  include HTTParty

  attr_accessor :beer

  def get_beer id
    @beer = JSON.parse(HTTParty.get("https://api.punkapi.com/v2/beers/#{id}").body)
  end
end
