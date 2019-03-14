Given("I have more than one data row in my table") do

end

Given(/^includes (.*) as a string and (.*) as an integer$/) do |name, age|
  puts "#{name} is #{age} years old"
end

Then(/^I can validate (.*) and (.*) are correct$/) do |name, age|
  age = age.to_i
  expect(name).to be_kind_of String
  expect(age).to be_kind_of Integer
end
