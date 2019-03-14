class KHIndexService

  include HTTParty

  attr_accessor :characters

  def get_all_chars
    @characters = JSON.parse(HTTParty.get('https://api.punkapi.com/v2/beers').body)
  end

end
