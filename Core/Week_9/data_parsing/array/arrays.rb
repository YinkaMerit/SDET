dragons_array = ["charizard", "drogon", "fluffy", "toothless", "Niv"]

# Access Charizard
puts dragons_array[0]
puts dragons_array.first

# Access Niv
puts dragons_array[4]
puts dragons_array[-1]
puts dragons_array.last

# Access Random Dragon
for i in 0..10 do
  puts dragons_array.sample
end
  puts dragons_array.sample

# 2 Dimensional Array
dragons_and_rating_array = [["charizard",6], ["drogon",2], ["fluffy",10], ["toothless",8], ["Niv",7]]

# Drogons Rating
puts dragons_and_rating_array[1][1]

# Random Dragons Rating
puts dragons_and_rating_array.sample[1]
