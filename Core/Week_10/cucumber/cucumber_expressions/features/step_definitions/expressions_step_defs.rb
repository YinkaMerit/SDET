
Given("I provide an integers {int}") do |int|
  expect(int.class).to be Integer
  @num = int
end

Then("I will be able to test the integer") do
expect(@num).to eq 22
end

# Given("I provide a float {float}") do |float|
#   pending # Write code here that turns the phrase above into concrete actions
# end


# Then("I can test the float") do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Given("I provide a specific word {string}") do |string|
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then("I will be able to use the word") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Given("I have {int} monies/peanut(s)") do |int|
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("I can buy pizza") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
Given(/^I provide a specific something like (.*) I can capture it using a regex$/) do |captured_thing|
  puts captured_thing
end

Then("I will be unstoppable") do

end

Given(/^I provide an email address (\w+@\w+\.\w+\.?\w+)$/) do |email|
  puts email
end

# {int} - Looks exclusively for an integer
# {float} - Looks exclusively for a float
# {word} - Looks for an individual word eg. 'eggs' but NOT 'scrambled eggs'
#{string} - Looks for a group of words/sentence
