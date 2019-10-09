class Point
  def initialize(x, y)
    @x, @y = x, y
  end

  def self.new_cartesian_point(x, y)
    Point.new(x, y)
  end

  def self.new_polar_point(rho, theta)
    Point.new(rho * Math.sin(theta), rho * Math.cos(theta))
  end

  def to_s
    "x: #{@x}, y: #{@y}"
  end
end

p1 = Point.new_cartesian_point(2,3)
p2 = Point.new_polar_point(1,2)

puts p1
puts 
puts p2.to_s
