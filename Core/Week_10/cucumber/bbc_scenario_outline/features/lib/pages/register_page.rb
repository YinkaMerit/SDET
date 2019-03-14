require 'capybara'

class BbcRegisterPage
  include Capybara::DSL

  REGISTER_LINK_CLASS = '.link--primary'
  REGISTER_PAGE_URL = 'https://account.bbc.com/register'
  DAY_INPUT_ID = 'day-input'
  MONTH_INPUT_ID = 'month-input'
  YEAR_INPUT_ID = 'year-input'
  CONTINUE_BUTTON_ID = 'submit-button'
  OVER_THIRTHEEN = '13 or over'
  USERNAME_FIELD_ID = 'user-identifier-input'
  PASSWORD_FIELD_ID = 'password-input'
  SHOW_PASSWORD = 'toggle-password-type'
  ERROR_MESSAGE = '#form-message-password'
  ERROR_MESSAGE_EMAIL = '#form-message-email'

  def visit_register_page
    visit(REGISTER_PAGE_URL)
  end

  def select_over_thirteen
    click_link(OVER_THIRTHEEN)
  end

  def enter_DOB(day, month, year)
    fill_in(DAY_INPUT_ID, with:day)
    fill_in(MONTH_INPUT_ID, with:month)
    fill_in(YEAR_INPUT_ID, with:year)
  end

  def click_next_button
    click_button(CONTINUE_BUTTON_ID)
  end

  def click_email
    find(USERNAME_FIELD_ID).click
  end

  def fill_in_email(email)
    fill_in(USERNAME_FIELD_ID, with:email)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD_ID, with:password)
  end


  def password_field
    click_link(SHOW_PASSWORD)
  end

  def email_field
    find('#user-identifier-input').click
  end


  def check_error_message
    find(ERROR_MESSAGE).text
  end

  def check_error_message_email
    find(ERROR_MESSAGE_EMAIL).text
  end

end
