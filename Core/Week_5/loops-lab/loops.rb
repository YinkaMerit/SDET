# return an array of reversed words
def reverse_array_of_strings (words)
#   words.map do |word|
#   word.reverse
# end
  words.map{|word| word.reverse}
end

# return all the even numbers less than the given number
def even_numbers_less_than num
  array = []
  (0...num).each do |i|
    if i % 2 == 0
    #i.even? <==> % 2 == 0
      array.push i
    end
  end
  array

print ("a".."z").to_a

array = (0...num).to_a
array.delete_if {|num| num.odd?}
end


# return the average of all numbers in an array
def average numbers
  # total = numbers.reduce 0 do |total,number|
  #   total + number
  # end
  # total /numbers.length.to_f

  numbers.reduce(0,:+).to_f/numbers.length
end
