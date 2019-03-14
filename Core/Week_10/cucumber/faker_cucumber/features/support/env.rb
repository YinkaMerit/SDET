require 'rspec'
require 'faker'
require 'capybara/cucumber'

require_relative 'helpers/faker_helper'

include FakerHelpers

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_driver = :chrome #Sets chrome as the default browser
  config.default_max_wait_time = 5 # wait time for asynchronous
  config.ignore_hidden_elements = true # Can only see the visible page elements
  config.default_selector = :css #CSS Selector is used by default
  config.app_host = 'https://toolsqa.com/automation-practice-form'
end
