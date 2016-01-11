class Triangle
  def initialize(side_a, side_b, side_c)
    @sides_in_order = [side_a, side_b, side_c].sort()
  end

  def is_triangle?
    @sides_in_order[2] <= @sides_in_order[0] + @sides_in_order[1]
  end

  def right_triangle?
    @sides_in_order[0]**2 + @sides_in_order[1]**2 == @sides_in_order[2]**2
  end

  def equilateral?
    @sides_in_order[0] == @sides_in_order[2]
  end

  def isosceles?
    !equilateral?() && \
      ((@sides_in_order[0] == @sides_in_order[1]) || \
      (@sides_in_order[1] == @sides_in_order[2]))
  end

  def scalene?
    !equilateral?() && !isosceles?()
  end
end
