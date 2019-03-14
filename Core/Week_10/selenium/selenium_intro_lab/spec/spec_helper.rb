require 'rspec'
require_relative '../sparta_registration.rb'
require_relative '../lib/random_data_generator/random_data'

RSpec.configure do |config|
  config.formatter = :documentation
end
