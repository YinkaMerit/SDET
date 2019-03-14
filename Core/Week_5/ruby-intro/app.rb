require "mac/say"
require "faker"

# puts "Hello, world!!"
#
# print "hello, world!! "
# print "Still talking!! "
# print "It wont shut up!! "
#
# p "Hello, world"
#
# p "s'more gains"

talker = Mac::Say.new(voice: :alex, rate: 300)
talker.say string: 'Hello world'

name = "Rob"

number = 12

dbz = Faker::DragonBall.character
fresh_prince = Faker::TheFreshPrinceOfBelAir.character
fresh_prince_quote = Faker::TheFreshPrinceOfBelAir.quote

# Mac::Say.say "Hello my name is #{name}"
Mac::Say.say "Hello my name is #{dbz}, where is Krillin he needs to die."
Mac::Say.say "#{fresh_prince}, #{fresh_prince_quote}"

talker.say string: "Hello my name is #{dbz}, where is Krillin he needs to die."
talker.say string: "#{fresh_prince}, #{fresh_prince_quote}"


puts name
puts number

print name
print number


p name
p number

# Interpolation only works within double quotes

puts "hello name"
puts "hello #{name}"
puts "hello #{number}"
puts 'hello #{number}'

puts "give me a number"

number = gets.to_i

p number.class
