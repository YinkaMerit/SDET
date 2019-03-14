require 'capybara'

class BBCHomepage

HOMEPAGE_URL = 'https://www.bbc.co.uk'
SIGN_IN_LINK_ID = '#idcta-link'
USERNAME_FIELD_ID = 'user-identifier-input'
PASSWORD_FIELD_ID = 'password-input'
SUBMIT_BUTTON_ID = '#submit-button'

def initialize
  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)

    @driver = Capybara::Session.new(:chrome)
  end


  def visit_homepage
    @driver.visit(HOMEPAGE_URL)
  end

  def sign_in_link
    @driver.find(SIGN_IN_LINK_ID)
  end

  def click_sign_in
    sign_in_link.click
  end

  def fill_in_username input
    @driver.fill_in(USERNAME_FIELD_ID, with:input)
  end

  def fill_in_password input
    @driver.fill_in(PASSWORD_FIELD_ID, with:input)
  end

  def click_submit_button
    @driver.find(SUBMIT_BUTTON_ID).click
  end

end

test = BBCHomepage.new
test.visit_homepage
test.click_sign_in
sleep 2
test.fill_in_username 'rwhitehouse@spartaglobal.com'
test.fill_in_password 'Password123'
test.click_submit_button
sleep 5







end
