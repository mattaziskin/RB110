=begin
equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must be
greater than the length of the longest side, and all sides must have lengths
greater than 0: if either of these conditions is not satisfied, the triangle
is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments,
and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending
on whether the triangle is equilateral, isosceles, scalene, or invalid.

Problem
We would write down the three triangle definitions already given
Auto invalidate input with a 0 length
before determining type of triangle, determine if valid measurements?
maybe make it an else condition
Should I account for inputs outside the test case?  IE string, or less than 3
Input: list of integers
Output: symbol (not necessarily a hash key)


Data structure: unclear if necessary, may just need simple test cases, hash?
Actually probably going to store values in an array to help call .any or .max

Algorith:
place input in array, call sort
longest = array[-1] last element will be biggest number or longest side
shorter_sides = array[1..2] slice of the remaining elements

Check if any input == 0, OR sum shortest 2 < longest  return :invalid

If all inputs == eachother, return :equilateral

Check if only one side different, I'd use .uniq.length
else scalene

could also call unique and check if length = original array to return
:scalene and else isosceles







Examples
Data Structure
Algorithm
Code


=end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort
  longest = sides[-1]
  shorter_sides = sides[0..1]
  if sides.any?(0) || shorter_sides.sum < longest
   p :invalid
  elsif sides.all?(longest)
   p :equilateral
  elsif sides[1] == sides[2] && sides[2] != sides[3]
   p :isosceles
  else
   p :scalene
  end
end


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
