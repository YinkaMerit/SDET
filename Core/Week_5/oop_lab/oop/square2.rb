class Square2
  attr_accessor :length, :scale

  def initialize length, scale
    @length = length
    @scale = scale
  end

  def calculate_area
    @length ** 2
  end

  def calculate_perimeter
    @length * 4
  end

  def scaled_area
    @scale * @length ** 2
  end

  def scaled_perimeter
    @scale * @length * 4
  end

  #Alternative method for scaled
  # def scale scale_factor
  #   @scale *= scale_factor
  # end

  def description
    puts "Square"
    puts "Area: #{calculate_area}, Perimeter: #{calculate_perimeter}."
    puts "Scaled_Area: #{scaled_area}, Scaled_Perimeter: #{scaled_perimeter}"
  end
end
