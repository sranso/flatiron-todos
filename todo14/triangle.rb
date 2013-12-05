require "debugger"

class TriangleError < StandardError
end

class Triangle
  attr_accessor :a, :b, :c
  attr_reader :a0, :a1, :a2

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = []
    @sides << @a
    @sides << @b
    @sides << @c
    @sides.sort!.reverse!
    @a0 = @sides[0]
    @a1 = @sides[1]
    @a2 = @sides[2]
  end

  def kind
    if @sides.inject(:+) == 0
      raise TriangleError, "This triangle cannot exist."
    elsif @a0 < 0 || (@a1 < 0) || (@a2 < 0)
      raise TriangleError, "This triangle cannot exist."
    elsif (@a1 + @a2) <= @a0
      raise TriangleError, "This triangle cannot exist."
    elsif @a0 == @a1 && (@a1 == @a2)
      :equilateral
    elsif @a0 == @a1 && (@a1 != @a2)
      :isosceles
    else
      :scalene
    end
  end

end

# Triangle.new(3,2,1).kind
# raise Triangle.new(0, 0, 0), "This triangle cannot exist."

