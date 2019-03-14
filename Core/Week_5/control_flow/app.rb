# If
#True

if true
  puts "the question was true"
end
if 0
  puts "the question was true"
end
if []
  puts "the question was true"
end
if {}
  puts "the question was true"
end

#False
if false
  puts "the question was true"
end
if nil
  puts "the question was true"
end

#
# #If Else
# if condition
#
# else
#
# end
#
# #Elsif
# if condition
#
#   elsif condition
#
#     else
#
# end

# #Switch
#
# puts "what is your age"
# age = gets.chomp.to_i
#
# case age
# when 18
#   puts "you're young"
#
# when 19,20,21,22
#   puts "Have a beer"
#
# when 23
#   puts "get to work"
#
# when 65
#   puts "happy retirement"
# end

#If Then

val = 10

if (val == 10)
  then puts "value is 10"
else
  puts "not 10"
end

#Ternary
# thing_to_check ? do_this_if_true : do_this_if_false

# #Unless
# num1 = 2
# num2 = 3
#
# unless (num1 == num2)
#   puts "those arent equal"
# end

#and -> &&
#or -> ||
#not -> !

if true || num1 > num2
  puts "it will never check thhe sizes of the 2 numbers"
end
