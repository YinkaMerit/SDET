require "capybara/cucumber"
require "capybara/dsl"
require_relative '../lib/bbc_site'

Capybara.configure do |config|
  config.ignore_hidden_elements = false #to ensure that all hidden elements on a page are recorded/available
  config.default_max_wait_time= 10 #wait time for asynchronus processes to finsh
  config.match = :prefer_exact #this setting is to ensure Capybara has specific matching rather than fuzzy logic

  if ENV['firefox']
    Capybara.default_driver = :firefox # ensures chrome is the default driver
    Capybara.register_driver :firefox do |app|
      Capybara::Selenium::Driver.new(app, :browser => :firefox)
    end
  elsif ENV['safari']
    Capybara.default_driver = :safari # ensures chrome is the default driver
    Capybara.register_driver :safari do |app|
      Capybara::Selenium::Driver.new(app, :browser => :safari)
    end
  else
    Capybara.default_driver = :chrome # ensures chrome is the default driver
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
  end

end

Before do
  current_window.resize_to(1200,900)
end

World(BbcSite)
