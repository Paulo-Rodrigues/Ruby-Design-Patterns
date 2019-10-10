class Shape
  def to_s
    raise "Abstract class Shape: method not implemented"
  end
end

class Circle < Shape
  def initialize(radius)
    @radius = radius
  end

  def resize(factor)
    @radius *= factor
  end

  def to_s
    "A circle of radius #{@radius}"
  end
end

class Square
  def initialize(side)
    @side = side
  end

  def to_s
    "A Square with side #{@side}"
  end
end

class ColoredShapeDecorator
  def initialize(shape, color)
    @shape, @color = shape, color
  end

  def to_s
    "#{@shape} with color #{@color}"
  end
end

class ApplyTransparencyDecorator
  def initialize(shape, transparency)
    @shape, @transparency = shape, transparency
  end

  def to_s
    "#{@shape} with #{@transparency * 100}% transparency"
  end
end

circle = Circle.new(2)
puts circle
square = Square.new(3)
puts square

red_circle = ColoredShapeDecorator.new(circle, 'red')
puts red_circle

blue_square = ColoredShapeDecorator.new(square, 'blue')
puts blue_square

blue_square_transparent = ApplyTransparencyDecorator.new(blue_square, 0.5)
puts blue_square_transparent

green_circle_transparent = ApplyTransparencyDecorator.new(ColoredShapeDecorator.new(Circle.new(5), 'green'), 0.4)
puts green_circle_transparent
