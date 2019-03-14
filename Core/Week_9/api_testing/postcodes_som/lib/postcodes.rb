require 'httparty'
require 'json'
require_relative 'services/single_postcode_service'
require_relative 'services/multiple_postcode_service'

# Parent Service Class
class Postcodesio

  # Child service class
  def single_postcode_service
    SinglePostcodeService.new
  end

  def multiple_postcode_service
    MultiplePostcodeService.new
  end

end
