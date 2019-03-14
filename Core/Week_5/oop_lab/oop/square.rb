class Square

  @@square_count = 0
  attr_accessor :length

  def initialize length
    @length = length
    count
  end

  def calculate_area
    @length ** 2
  end

  def calculate_perimeter
    @length * 4
  end

  def scale scale_factor
    @length *= scale_factor
  end

  def print
    puts "Area: #{calculate_area}, Perimeter: #{calculate_perimeter}."
  end

  def count
    @@square_count += 1
    puts "#{@@square_count}"
  end

  def self.square_count
    @@square_count
    puts "You have #{@@square_count}"
  end
end
