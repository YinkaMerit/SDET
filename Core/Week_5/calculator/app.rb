# def calculator option
puts"Would you like (b) Basic Functions or (a) Advanced Functions?"
response = gets.chomp

if response =="b"
  puts "Do you want (a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision?"
  type = gets.chomp.to_s

  if type=="a"
    puts "whats numbers would you like to add"
    num1 = gets.chomp.to_f
    num2 = gets.chomp.to_f
    answer = num1 + num2
    puts answer
  elsif type=="m"
    puts "whats numbers would you like to multiple"
    num1 = gets.chomp.to_f
    num2 = gets.chomp.to_f
    answer = num1 * num2
    puts answer
  elsif type=="s"
    puts "whats numbers would you like to subtract"
    num1 = gets.chomp.to_f
    num2 = gets.chomp.to_f
    answer = num1 - num2
    puts answer

  elsif type=="d"
    puts "whats numbers would you like to divide"
    num1 = gets.chomp.to_f
    num2 = gets.chomp.to_f
    answer = num1 / num2
    puts answer

  else
      puts "Invalid Selecion.Would you like (a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision?"
      type = gets.chomp
  end

elsif response =="a"
  puts "Do you want (p)ower or (s)quare root?"
  type = gets.chomp
  # puts option
  if type=="p"
    puts "whats number would you like to find the power"
    num1 = gets.chomp.to_f
    puts "To what power"
    num2 = gets.chomp.to_f
    answer = num1 ** num2
    puts answer
  elsif type=="s"
    puts "whats number would you like to find the square root of?"
    num1 = gets.chomp.to_f
    answer = Math.sqrt(num1)
    puts answer
  else
      puts "Invalid Selecion.Would you like (p)ower or (s)quare root?"
  end
else
  puts "Invalid Selection.Would you like (b) Basic Functions or (a) Advanced Functions?"
  response = gets.chomp
end

#
# case type
#
# when "a"
#   puts "whats numbers would you like to add"
#   num1 = gets.chomp.to_f
#   num2 = gets.chomp.to_f
#   answer = num1 + num2
#   puts answer
# when "m"
#   puts "whats numbers would you like to multiple"
#   num1 = gets.chomp.to_f
#   num2 = gets.chomp.to_f
#   answer = num1 * num2
#   puts answer
# when "s"
#   puts "whats numbers would you like to subtract"
#   num1 = gets.chomp.to_f
#   num2 = gets.chomp.to_f
#   answer = num1 - num2
#   puts answer
# when "d"
#   puts "whats numbers would you like to divide"
#   num1 = gets.chomp.to_f
#   num2 = gets.chomp.to_f
#   answer = num1 / num2
#   puts answer
# end
# case type
#
# when "p"
#   puts "whats number would you like to find the power"
#   num1 = gets.chomp.to_f
#   puts "To what power"
#   num2 = gets.chomp.to_f
#   answer = num1 ** num2
#   puts answer
# when "s"
#   puts "whats number would you like to find the square root of?"
#   num1 = gets.chomp.to_f
#   answer = Math.sqrt(num1)
#   puts answer
# end
