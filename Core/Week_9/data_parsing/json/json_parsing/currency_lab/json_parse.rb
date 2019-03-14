require 'json'

class JSONParse

  attr_accessor :json_parse

  def initialize json_file
    @json_parse = JSON.parse(File.read(json_file))
  end

  def get_base_value
    @json_parse["base"]
  end

  def get_date_value
    @json_parse["date"]
  end

  def get_rates
    @json_parse["rates"]
  end
   
  def get_number_of_rates
    get_rates.keys.count
  end

  def get_number_of_values
    get_rates.values.count
  end

end
