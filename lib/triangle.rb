class Triangle
 define_method(:initialize) do |side1, side2, side3|
   @side1 = side1
   @side2 = side2
   @side3 = side3
 end

 define_method(:equilateral?) do
   if @side1.eql?(@side2).&(@side1.eql?(@side3))
     true
   end
 end


 define_method(:isosceles?) do
   if @side1.eql?(@side2).|(@side1.eql?(@side3))
     true
   elsif @side2.eql?(@side3)
     true
   else
     false
   end
 end

 define_method(:scalene?) do
   if @side1.eql?(@side2).|(@side1.eql?(@side3))
     false
   elsif @side2.eql?(@side3)
     false
   else
     true
   end
 end

 define_method(:which_triangle?) do
   if self.equilateral?()
     "equilateral"
   elsif self.isosceles?()
     "isosceles"
   else
     "scalene"
   end
 end
end
