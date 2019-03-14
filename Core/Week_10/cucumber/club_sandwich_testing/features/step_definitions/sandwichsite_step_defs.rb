Given("I am on the homepage") do
  sandwich_homepage.visit_homepage
end

# When("I click on a sandwich") do
#   sandwich_homepage.click_sandwich ''
# end
#
# Then("I should see the sandwiches's show page") do
#   expect(sandwich_homepage.current_url).to eq 'http://localhost:9292/1'
# end

Then("I should have {int} sandwiches on the page") do |int|
  expect(sandwich_homepage.count_sandwich).to eq int
end

When(/^I click on a sandwich (.*)$/) do |sandwich|
  sandwich_homepage.click_sandwich sandwich
end

Then(/^I should see the sandwiches's show page (.*)$/) do |id|
  expect(sandwich_homepage.current_url).to eq "http://localhost:9292/#{id}"
end
