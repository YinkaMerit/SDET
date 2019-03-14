class Circle
  attr_accessor :radius, :scale

  def initialize raduis, scale
    @raduis = raduis
    @scale = scale
  end

  def calculate_area
    (Math::PI) * (@raduis ** 2)
  end

  def calculate_perimeter
    2 * (Math::PI) * (@raduis)
  end

  def scaled_area
    (Math::PI) * ((@scale * @raduis) ** 2)
  end

  def scaled_perimeter
      2 * (Math::PI) * (@scale * @raduis)
  end

  def description
    puts "Circle"
    puts "Area: #{calculate_area}, Perimeter: #{calculate_perimeter}."
    puts "Scaled_Area: #{scaled_area}, Scaled_Perimeter: #{scaled_perimeter}"
  end
end
