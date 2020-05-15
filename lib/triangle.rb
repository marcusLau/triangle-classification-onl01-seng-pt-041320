class Triangle
  # write code here

  attr_accessor :a, :b, :c

  def initialize(a, b, c) # sides of triangle
    @a = a
    @b = b
    @c = c
  end

  # should raise customError if triangle is invalid
  def kind
    if @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    elsif @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      raise TriangleError
    else
      if @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @b == c || @c == @a
        :isosceles
      elsif @a != @b && @b != @c && @a != @c
        :scalene
      end
    end
  end

  class TriangleError < StandardError

  end

end
