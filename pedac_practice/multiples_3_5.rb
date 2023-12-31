=begin

Write a method that searches for all multiples of 3 or 5 that lie between 1 and
some other number, and then computes the sum of those multiples. For instance,
if the supplied number is 20, the result should be 98
(3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Problem:
Input Integer
Output Integer

Examples: no edge cases to consider

Data Structure: Range for iteration, array for storage

Algorithm:

  Create a method that accepts an integer parameter
  Using a range from 1..imteger, select elements that are evenly divisible
  (% 3 == 0 || % 5 ==0) and place elements in an array
  call sum on array


=end

def multisum(integer)
  (1..integer).select { |num| num % 3 == 0 || num % 5 == 0}.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168