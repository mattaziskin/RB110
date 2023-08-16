=begin
Write a method that computes the difference between the square of the sum of
thefirst n positive integers and the sum of the squares of the
first n positive integers.

PROBLEM:
Input: integer
validate input required?  integer assumption?  positive?
Output: integer

multiple methods to calc sum squared, and sum of squares
pass both into main method

DATA Structure:

SUM to Square
Probably going to use a range iteration to populate an array
call .sum on array?  can you call sum on a range or use inject?


SUM of Squares
range to array, then sum the array


Main method
simple subtraction of return values of both methods

=end
require 'pry'
require 'pry-byebug'
def sum_then_square(number)
  ((1..number).inject(:+))**2
end

def sum_of_squares(number)
  (1..number).map {|num| num**2 }.inject(:+)
end

def sum_square_difference(number)
  sum_then_square(number) - sum_of_squares(number)
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150