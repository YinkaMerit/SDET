require 'json'
require_relative 'json_parse_class.rb'

colors = JSONParse.new('json_example.json')
rates = JSONParse.new('json_exchange_rates.json')

# p colors.json_parse
# p rates.json_parse
# p rates.json_parse["base"]
# p rates.json_parse["rates"]
p rates.json_parse["rates"]["GBP"]
