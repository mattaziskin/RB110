=begin
Write a method that takes one argument, a positive integer, and returns the sum
of its digits.

Problem
  Input integer output integer
Examples
  All positive and non zero
Data structure
  Array of digits
Algorithm
  define a method called sum with an integer parameter
  call digits on integer then call sum on that array of digits

=end

def sum(integer)
  integer.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45