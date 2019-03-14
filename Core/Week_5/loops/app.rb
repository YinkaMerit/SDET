def say_hello
  puts "Hello,World!"
end

#Basic Loop
i = 0

# loop do
#   # i++ does not work
#   i +=1
#   puts "The value of i is #{i}"
#   if i > 5
#     break
#   end
# end
#
# #While
# while i < 10
#   puts "Hello,World"
#   i+=1
# end
#
# #Do While
# begin
#   say_hello
#   i+=1
# end while (i < -1)
#
# #Each
#
# (0..5).each do |i|
#   say_hello
# end
#
# some_words = ["this","is","an","array","of","words"]
#
# some_words2 = ["this","is","an","array",{name: "Yinka", age: "22"},"words"]
#
# some_words2.each_with_index do |dataitem,index|
#   puts "#{dataitem} is held at index: #{index}"
# end
#
# person = {name:"Yinka",age:"22",city: "brum"}
#
# # each for objects the first is the key and second is the value always
# person.each do |key, value|
#   puts "the key is #{key} and its value is #{value}"
# end
#
# #For 0..5 upto an including 0...5 upto and not including
# for i in 0..5
#   puts "#{i}"
# end
#
# for letter in "a".."z"
#   puts "#{letter}"
# end
#
# array = []
#
# for letter in "a".."z"
#   array.push letter
# end
# print array
#
# # Map
# #Maps loops over array then creates a new array and stores it into a new array
# reversed_words = some_words.map do |word|
#   word.reverse
# end
# #map¡ modifies the original array modifying the original one and storing
# #map just modifies the array and stores it in a new array
# print reversed_words

some_num = [1,2,3,4,5,6,6,3]

puts some_num.sum

sum = some_num.reduce 0 do |total,number|
  total + number
end

quick_sum = some_num.reduce(0,:+)

puts "Sum: #{sum}"
puts "Sum: #{quick_sum}"
