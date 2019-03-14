require 'capybara'

class BbcSignInPage
  include Capybara::DSL

  REGISTER_LINK_CLASS = '.link--primary'
  REGISTER_PAGE_URL = 'https://account.bbc.com/register'

  def visit_register_page
    visit(REGISTER_PAGE_URL)
  end

  def click_register_link
    find(REGISTER_LINK_CLASS).click
  end

end
