require 'capybara/dsl'
require 'rspec'

class BbcSignInPage
  include Capybara::DSL

  attr_reader :wrong_username_error_text, :password_less_than_eight_chars_error_text, :password_has_no_numbers_error_text, :password_has_no_letters_error_text

  def initialize
    @wrong_username_error_text = "Sorry, that email doesn’t look right. Please check it's a proper email."
    @password_less_than_eight_chars_error_text = "Sorry, that password is too short. It needs to be eight characters or more."
    @password_has_no_numbers_error_text = "Sorry, that password isn't valid. Please include something that isn't a letter."
    @password_has_no_letters_error_text = "Sorry, that password isn't valid. Please include a letter."
  end

  SIGN_IN_PAGE_URL = 'https://www.bbc.co.uk/signin'
  USERNAME_FIELD_ID = 'user-identifier-input'
  PASSWORD_FIELD_ID = 'password-input'
  WRONG_USERNAME_ERROR_ID = 'form-message-username'
  WRONG_PASSWORD_ERROR_ID = 'form-message-password'
  REGISTER_LINK_TEXT = 'Register now'
  SUBMIT_BUTTON_ID = 'submit-button'

  def visit_register_page
    visit(SIGN_IN_PAGE_URL)
  end

  def username_field
    find_field(:id, USERNAME_FIELD_ID)
  end

  def fill_in_username(username)
    fill_in(USERNAME_FIELD_ID, with: username)
  end

  def password_field
    find_field(:id, PASSWORD_FIELD_ID)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def sign_in_button
    find_button(SUBMIT_BUTTON_ID)
  end

  def click_sign_in_button
    sign_in_button.click
  end

  def register_link
    find_link(REGISTER_LINK_TEXT)
  end

  def click_register_link
    click_link(REGISTER_LINK_TEXT)
  end

  def incorrect_username_error_text
    find(:id, WRONG_USERNAME_ERROR_ID).text
  end

  def incorrect_password_error_text
    find(:id, WRONG_PASSWORD_ERROR_ID).text
  end

end
