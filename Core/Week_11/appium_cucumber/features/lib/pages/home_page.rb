class Homepage

def initialize driver
  @driver = $driver
end
def check_homepage_display
    @driver.find_element(:id,"protect.budgetwatch:id/action_settings").displayed?
end

def click_budget_button
    @driver.find_elements(:id, "protect.budgetwatch:id/menu")[0].click
end

end
