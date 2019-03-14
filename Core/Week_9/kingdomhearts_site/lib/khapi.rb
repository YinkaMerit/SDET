require 'httparty'
require 'json'
require_relative "services/kh_services/show_service"
require_relative "services/kh_services/index_service"

class KingdomHeartsAPI
  def kh_show_service
    KHShowService.new
  end

  def kh_index_service
    KHIndexService.new
  end

end
