class BBCSignInPage

  include Capybara::DSL

  USERNAME_FIELD_ID = 'user-identifier-input'
  PASSWORD_FIELD_ID = 'password-input'
  SUBMIT_BUTTON_ID = 'submit-button'
  ERROR_USER = '#form-message-username'
  ERROR_PASSWORD = '#form-message-password'

  def fill_in_username input
    fill_in(USERNAME_FIELD_ID, with:input)
  end

  def fill_in_password input
    fill_in(PASSWORD_FIELD_ID, with:input)
  end

  def click_sign_in
    click_button(SUBMIT_BUTTON_ID)
  end

  def invalid_username
    find(ERROR_USER).text
  end

  def invalid_password
    find(ERROR_PASSWORD).text
  end

end
