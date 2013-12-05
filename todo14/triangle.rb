require "debugger"
class Triangle < StandardError

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
    # debugger
    if @a0 == @a1 && (@a1 == @a2)
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

