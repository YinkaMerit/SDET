require 'httparty'
require 'json'

class PostCodesio
  # include HTTParty equivalent to line 1
  include HTTParty

  attr_accessor :single_result, :multiple_result

  base_uri "https://api.postcodes.io"

  def single_postcode_result postcode
     response = self.class.get("/postcodes/#{postcode}").body
     @single_result = JSON.parse(response)
  end

  def multiple_postcode_result postcodearray
    response = self.class.post("/postcodes", :body => {'postcodes': postcodearray}).body
    @multiple_result = JSON.parse(response)
  end

end

postcode = PostCodesio.new

puts postcode.single_postcode_result "B11BY"

puts postcode.multiple_postcode_result ["B11BY", "B74BP"]
