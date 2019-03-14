def say_hello(name)
  puts "Hello #{name}"
end

def say_bye name
  puts "bye #{name}"
end

def add_num (num1,num2=4)
  return num1 + num2
  #return ends the function
  puts "will this run"
end

def create_user (name,course="eng23")
  puts "#{name} is on course #{course}"
end
# def create_user (name,course="eng23",location)
#   puts "#{name} is on course #{course} in #{location}"
# end

#splat
def say_some_words *words
  puts words
end

def students course, *people
  people.each do |person|
    puts "#{person} is on #{course} "
  end
end

def students2 course, *people,location
  people.each do |person|
    puts "#{person} is on #{course} in #{location}"
  end
end

# say_hello("Yinka")
# say_bye "Yinka"
#
# add_num(3,76)
# add_num(3)
# #
# create_user ("Yinka")
# create_user "Yinka","eng24"
#
# say_some_words ("Hello")
# say_some_words "Hello","this","is","some","words"
#
# students "eng23","Ashley","CJ","Abdul","Milly"
# students2 "eng23","Ashley","CJ","Abdul","Milly", "Brum"

puts add_num 3,45
