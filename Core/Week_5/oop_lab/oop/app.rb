require_relative "square.rb"
require_relative "square2.rb"
require_relative "rectangle.rb"
require_relative "circle.rb"

square = Square.new 8
square = Square.new 3

square1 = Square2.new 8, 10
square2 = Square2.new 3, 15

rectangle = Rectangle.new 8, 10, 4, 5

circle = Circle.new 3, 4

square.print
square.scale 10
square.print
Square.square_count

# square1.description
# rectangle.description
# circle.description
