require 'rspec'
require_relative '../lib/khapi'

RSpec.configure do |config|
  config.color_mode = true
  config.formatter = :documentation
end
