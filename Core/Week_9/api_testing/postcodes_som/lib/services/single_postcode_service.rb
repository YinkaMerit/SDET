class SinglePostcodeService

  include HTTParty

  base_uri "https://api.postcodes.io"

  def single_postcode_result postcode
    response = self.class.get("/postcodes/#{postcode}").body
    @single_result = JSON.parse(response)
  end

  def get_status
    @single_result['status']
  end

  def get_result
    @single_result['result']
  end

  def get_postcode
    get_result['postcode']
  end

end
