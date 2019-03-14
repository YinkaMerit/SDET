Given("I can access the toolsqa form") do
  visit('/') #because we have specific the app_host
end

When("I enter relevant data") do
  fill_in('firstname', with: first_name)
  fill_in('lastname', with: last_name)
  choose 'sex-0'
  choose 'exp-0'
  fill_in('datepicker', with: date)
end

Then("the form will be copleted") do

end
