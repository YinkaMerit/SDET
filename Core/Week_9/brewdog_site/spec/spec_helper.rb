require 'rspec'
require_relative '../lib/punkapi'

RSpec.configure do |config|
  config.color_mode = true
  config.formatter = :documentation
end
