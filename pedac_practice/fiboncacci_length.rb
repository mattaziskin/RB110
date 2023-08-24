=begin
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
such that the first 2 numbers are 1 by definition, and each subsequent number
is the sum of the two previous numbers. This series appears throughout the
natural world.

Computationally, the Fibonacci series is a very simple series, but the results
grow at an incredibly rapid rate. For example, the 100th Fibonacci number is
354,224,848,179,261,915,075 -- that's enormous, especially considering that
it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci
number that has the number of digits specified as an argument.
(The first Fibonacci number has index 1.)


problem
input integer, output integer representing index

example: this will be tested by very high numbers, may run too long

data structure: array

algorithm
create a method with an integer parameter
initialize a sum variable and assign to 0
initialize an array with elements [1,1]
loop do
  array.push(array[-2] + array[-1])
  break if array[-1].digits.length == integer
end
array.index(array[-1])


=end
def find_fibonacci_index_by_length(integer)
  array = [1,1]
  loop do
    array.push(array[-2] + array[-1])
    break if array[-1].digits.length == integer
  end
  array.index(array[-1]) + 1
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847