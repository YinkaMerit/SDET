require 'capybara'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

session1 = Capybara::Session.new(:chrome)
session2 = Capybara::Session.new(:chrome)

session1.visit('https://www.toolsqa.com/automation-practice-form/')
# session2.visit('https://www.google.com')

session1.fill_in('firstname', with: 'test')

sleep 1

session1.choose 'sex-0'
session1.choose 'exp-1'

sleep 1

session1.find(:css, '#exp-4').click

sleep 1

session1.within(:css, '#continents') do

end

sleep 1
