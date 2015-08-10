require ('rspec')
require ('triangle')

describe (Triangle) do
  describe ("#equilateral?") do
    it("returns true if all sides aren't equal") do
      test_triangle1 = Triangle.new(15, 15, 15)
      expect(test_triangle1.equilateral?()).to(eq(true))
    end
  end

  describe('#isosceles') do
    it("returns true if any two sides are equal") do
      test_triangle2 = Triangle.new(15, 15, 30)
      expect(test_triangle2.isosceles?()).to(eq(true))
    end
  end

  describe('#scalene') do
    it("returns true if any no sides are equal") do
      test_triangle3 = Triangle.new(15, 16, 30)
      expect(test_triangle3.scalene?()).to(eq(true))
    end
  end
end
