require_relative "../animal.rb"
require_relative "../animal_types/mammals.rb"

class Racoon < Animal
  include Mammals

  def speak
    puts "Chitter!!"
  end

  def number_of_legs
    Quadruped.legs
  end
end

steve = Racoon.new

steve.speak
steve.number_of_legs

elephant = Animal.new
elephant.speak
