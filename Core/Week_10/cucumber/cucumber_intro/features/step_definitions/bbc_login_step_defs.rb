
Given("I access the bbc login page") do
  bbc_homepage.visit_homepage
  bbc_homepage.click_sign_in
  expect(bbc_homepage.current_url).to eq 'https://account.bbc.com/signin'
end

When("I input a correct username") do
  bbc_sign_in_page.fill_in_username 'rwhitehouse@spartaglobal.com'
end

When("I input a correct password") do
  bbc_sign_in_page.fill_in_password 'Password123'
end

When("I click login") do
  bbc_sign_in_page.click_sign_in
end

Then("I will be logged in") do
  expect(bbc_homepage.sign_in_link_text).to eq 'Your account'
end

Then("I will see an error for blank details") do
  expect(bbc_sign_in_page.invalid_username).to eq bbc_sign_in_page.blank_error
  expect(bbc_sign_in_page.invalid_password).to eq bbc_sign_in_page.blank_error
end
