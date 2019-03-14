class Rectangle
  attr_accessor :height,:width, :height_scale, :width_scale

  def initialize height, width, height_scale, width_scale
    @height = height
    @width = width
    @height_scale = height_scale
    @width_scale = width_scale
  end

  def calculate_area
    @height * @width
  end

  def calculate_perimeter
    2 * (@height + @width)
  end

  def scaled_area
    (@height_scale * @height) * (@width_scale * @width)
  end

  def scaled_perimeter
    2 * ((@height_scale * @height) + (@width_scale * @width))
  end

  def description
    puts "Rectangle"
    puts "Area: #{calculate_area}, Perimeter: #{calculate_perimeter}."
    puts "Scaled_Area: #{scaled_area}, Scaled_Perimeter: #{scaled_perimeter}"
  end
end
