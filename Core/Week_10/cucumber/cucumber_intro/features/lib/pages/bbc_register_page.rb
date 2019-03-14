class BBCRegisterPage

  include Capybara::DSL

  REGISTER_LINK_CLASS = '.link--primary'
  DAY_INPUT_ID = 'day-input'
  MONTH_INPUT_ID = 'month-input'
  YEAR_INPUT_ID = 'year-input'
  SUBMIT_BUTTON_ID = 'submit-button'

  def click_register_link
    find(REGISTER_LINK_CLASS).click
  end

  def click_under_13
    click_link('Under 13')
  end

  def click_over_13
    click_link('13 or over')
  end

end
