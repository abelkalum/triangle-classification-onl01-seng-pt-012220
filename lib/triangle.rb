# lib/triangle.rb
 
class Triangle
  def initialize(side[0], side[1], side[2])
    @side[0] = side[0]
    @side[0] = side[0]
    
  end

  def kind
    raise TriangleError if @sides.any? {|s| s <= 0} or
      @sides[0]+ @sides[1] <= @sides[2]
    case @sides.uniq.size
    when 1
      :equilateral
    when 2
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end