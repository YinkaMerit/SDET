class KHShowService
  include HTTParty

  attr_accessor :character

  def get_char id
    @character = JSON.parse(HTTParty.get("https://api.punkapi.com/v2/beers/#{id}").body)
  end
end
