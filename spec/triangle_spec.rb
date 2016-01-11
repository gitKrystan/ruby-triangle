require('rspec')
require('triangle')

describe(Triangle) do
  describe('#is_triangle?') do
    it('returns false if it is not a triangle') do
      test_triangle = Triangle.new(2, 2, 8)
      expect(test_triangle.is_triangle?()).to(eq(false))
    end

    it('returns false if it is not a triangle') do
      test_triangle = Triangle.new(8, 2, 2)
      expect(test_triangle.is_triangle?()).to(eq(false))
    end

    it('returns false if it is not a triangle') do
      test_triangle = Triangle.new(2, 8, 2)
      expect(test_triangle.is_triangle?()).to(eq(false))
    end

    it('returns true if it is a triangle') do
      test_triangle = Triangle.new(3, 4, 5)
      expect(test_triangle.is_triangle?()).to(eq(true))
    end
  end

  describe('#right_triangle?') do
    it('returns false if it is not a right triangle') do
      test_triangle = Triangle.new(1, 2, 4)
      expect(test_triangle.right_triangle?()).to(eq(false))
    end

    it('returns true if it is a right triangle') do
      test_triangle = Triangle.new(3, 4, 5)
      expect(test_triangle.right_triangle?()).to(eq(true))
    end
  end

  describe('#equilateral?') do
    it('returns false if no two sides are equal') do
      test_triangle = Triangle.new(3, 4, 5)
      expect(test_triangle.equilateral?()).to(eq(false))
    end

    it('returns true if all sides are equal') do
      test_triangle = Triangle.new(1, 1, 1)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
  end

  describe('#isosceles?') do
    it('returns false if no two sides are equal') do
      test_triangle = Triangle.new(3, 4, 5)
      expect(test_triangle.isosceles?()).to(eq(false))
    end

    it('returns false if all three sides are equal') do
      test_triangle = Triangle.new(3, 3, 3)
      expect(test_triangle.isosceles?()).to(eq(false))
    end

    it('returns true if two sides are equal') do
      test_triangle = Triangle.new(1, 1, 3)
      expect(test_triangle.isosceles?()).to(eq(true))
    end

    it('returns true if two sides are equal') do
      test_triangle = Triangle.new(1, 3, 3)
      expect(test_triangle.isosceles?()).to(eq(true))
    end
  end

  describe('#scalene?') do
    it('returns false if any sides are equal') do
      test_triangle = Triangle.new(1, 3, 3)
      expect(test_triangle.scalene?()).to(eq(false))
    end

    it('returns true if no sides are equal') do
      test_triangle = Triangle.new(3, 4, 5)
      expect(test_triangle.scalene?()).to(eq(true))
    end
  end
end
