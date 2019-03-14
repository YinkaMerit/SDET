Given("I access the bbc login page") do
  bbc_homepage.visit_home_page
  bbc_homepage.click_sign_in_link
end

And("I input incorrect username details") do
  bbc_sign_in_page.fill_in_username('a@b.c')
end


And("I input incorrect password details") do
  bbc_sign_in_page.fill_in_password('password123')
end

When("I try to login") do
  bbc_sign_in_page.click_sign_in_button
end

Then("I receive an error for not finding the account") do
  expect(bbc_sign_in_page.incorrect_username_error_text).to eq bbc_sign_in_page.wrong_username_error_text
end

And("I input any username details") do
  bbc_sign_in_page.fill_in_username('username')
end

And("I input an incorrect password as 1234abc") do
  bbc_sign_in_page.fill_in_password('1234abc')
end

Then("I receive an error stating it needs to be at least 8 chars") do
  expect(bbc_sign_in_page.incorrect_password_error_text).to eq bbc_sign_in_page.password_less_than_eight_chars_error_text
end

# Correct username, password only letters
And("I input correct username details") do
  bbc_sign_in_page.fill_in_username('e1753019@nwytg.com')
end

And("I input an incorrect password as abcdefgh") do
  bbc_sign_in_page.fill_in_password('abcdefgh')
end

Then("I receive an error for the password only contains letters") do
  expect(bbc_sign_in_page.incorrect_password_error_text).to eq bbc_sign_in_page.password_has_no_numbers_error_text
end

# Pasword has ony numbers
And("I input an incorrect password as 12345678") do
  bbc_sign_in_page.fill_in_password('12345678')
end

Then("I receive an error for the password only contains numbers") do
  expect(bbc_sign_in_page.incorrect_password_error_text).to eq bbc_sign_in_page.password_has_no_letters_error_text
end

# Successful login
# Given("I input a correct username details") do
#   bbc_sign_in_page.fill_in_username('e1753019@nwytg.com')
# end

And("I input a correct password") do
  bbc_sign_in_page.fill_in_password('dummy_password123')
end


Then("I am redirected to the homepage") do
  sleep 3
  expect(bbc_homepage.get_url).to eq bbc_homepage.homepage_url
end
