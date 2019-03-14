require_relative "duck.rb"

duck1 = Duck.new "Frank", "Gainsboro", "Unit"
duck1.speak
duck2 = Duck.new "Howard", "Blue", "Smol"

# duck2.speak
#
# duck2.name = "Stephanie"
duck2.update_name "Stephanie"
# duck2.speak
#
duck2.description
#
# duck2.colour = "green"
#
# duck2.description

puts Duck.duck_names
