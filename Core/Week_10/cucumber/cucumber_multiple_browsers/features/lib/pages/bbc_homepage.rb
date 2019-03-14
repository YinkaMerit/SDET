require 'capybara/dsl'

class BbcHomepage
  include Capybara::DSL

  attr_reader :homepage_url

  def initialize
    @homepage_url = HOMEPAGE_URL
  end

  # Page Objects
  HOMEPAGE_URL = 'https://www.bbc.co.uk/'
  SIGN_IN_LINK_ID = '#idcta-link'

  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def sign_in_link
    find(SIGN_IN_LINK_ID)
  end

  def click_sign_in_link
    sign_in_link.click
  end

  def get_url
    current_url
  end


end
