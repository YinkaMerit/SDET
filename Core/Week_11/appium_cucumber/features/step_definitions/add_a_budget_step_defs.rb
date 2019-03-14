
Given("I can access the app") do
  expect(homepage.check_homepage_display).to be true
end

When("I click budget") do
  homepage.click_budget_button
end

Then("the budget page opens") do
  expect(budgetpage.check_budget_page_display).to be true
end

# Given("I click budget") do
#   homepage.click_budget_button
# end

When("I enter a budget") do
  budgetpage.click_add_a_budget
  budgetpage.add_budget_name
  budgetpage.add_budget_value
  budgetpage.save_budget
end

Then("the budget is saved and displayed") do
  expect(budgetpage.budget_displayed).to eq "Yinka"
end

Given("a budget is displayed") do
  budgetpage.click_add_a_budget
  budgetpage.add_budget_name
  budgetpage.add_budget_value
  budgetpage.save_budget
  expect(budgetpage.budget_displayed).to eq "Yinka"
end

When("I delete a budget") do
  budgetpage.delete_budget
end

Then("it will be removed from the list") do
  pending # Write code here that turns the phrase above into concrete actions
end
