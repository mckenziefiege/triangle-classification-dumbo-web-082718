class Triangle
    attr_reader :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def triangle_is_valid
    @side1 + @side2 > @side3 &&
    @side1 + @side3 > @side2 &&
    @side2 + @side3 > @side1 &&
    @side1 > 0 &&
    @side2 > 0 &&
    @side3 > 0
   end

  def kind
    if triangle_is_valid
      if @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides of a triangle
       always exceeds the length of the third side.
      This is a principle known as the triangle inequality."
    end
  end
end
