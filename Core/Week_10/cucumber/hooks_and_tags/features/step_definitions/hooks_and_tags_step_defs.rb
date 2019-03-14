Given("I have a before hook in place with name details") do
  p @users
end

Then("I can validate this information") do
  expect(@users.length).to be 8
end

Given("I use a tag") do

end

Then("Only this test will run") do
  puts 'We can use tags'
end
