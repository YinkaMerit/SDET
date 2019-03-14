# Varaibles

# my_variable = 5.0
# second_num = 12
#
# puts my_variable
# puts my_variable.methods
#
# p my_variable.to_s
#
# p my_variable.class
# p my_variable.to_s.class
#
# puts my_variable + second_num
#
# first_name = "yinka"
# last_name = "Merit"
# eye_colour = "brown"
# age =  22.45
#
# puts first_name.upcase
# puts last_name.downcase
# puts "my name is #{first_name.capitalize}"
# puts first_name.reverse
#
# puts "my name is #{first_name.capitalize} #{last_name.capitalize}, I am #{age.floor} years old."

#ARRAYS

array = ["apple", 12, [4,5], "Yinka"]

# print array
# p array
# puts array[3]
# puts array[2][1]
#
# puts array.first
# puts array[0]
# puts array.last
# puts array[-1]
# puts array[-2]
#
# puts array.length

# array[0] = "pear"
#
# array.push("word")
# array.push "word"

#Removes first and last element of the array
# print array
# last = array.pop
# first = array.shift
# puts array
# print array

#Objects

#JSON
person = {
  name: "Yinka",
  age: 22,
  eye_colour: "brown"
}

#Hash Rockets
person2 = {
  :name => "Yinka",
  :age => 22,
  :eye_colour => "brown"
}

puts person
person[:name] = "Rich"
person[:city] = "London"
puts person[:name]
puts person
puts person2

letters = "abcdefg"

letters.reverse!

puts letters
