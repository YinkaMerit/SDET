class Budgetpage

  def initialize driver
    @driver = $driver
  end

  def check_budget_page_display
    @driver.find_element(:id, "protect.budgetwatch:id/action_calendar").displayed?
  end

  def click_add_a_budget
    @driver.find_element(:id, "protect.budgetwatch:id/action_add").click
  end

  def add_budget_name
    @driver.find_element(:id, "protect.budgetwatch:id/budgetNameEdit").send_keys "Yinka"
  end

  def add_budget_value
    @driver.find_element(:id, "protect.budgetwatch:id/valueEdit").send_keys 3000
  end

  def save_budget
    @driver.find_element(:id, "protect.budgetwatch:id/action_save").click
  end

  def budget_displayed
    @driver.find_elements(:id, "protect.budgetwatch:id/budgetName")[-2].text
  end

  def delete_budget
    @driver.touch_actions.long_press(find_elements(:id, "protect.budgetwatch:id/budgetName")[-2]).perform
  end

end
