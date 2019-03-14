class PunkIndexService

  include HTTParty

  attr_accessor :beers

  def get_all_beers
    @beers = JSON.parse(HTTParty.get('https://api.punkapi.com/v2/beers').body)
  end

end
