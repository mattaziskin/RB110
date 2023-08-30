=begin
Create a method that takes two integers as arguments. The first argument is a
count, and the second is the first number of a sequence that your method will
create. The method should return an Array that contains the same number of
elements as the count argument, while the values of each element will be
multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater,
while the starting number can be any integer value. If the count is 0, an empty
list should be returned.

Problem:
  Input 2 integers, output array
Examples:
  Count always abbove 0, if count is 0 then return empty array
Data Structure:
  Array
Algorithm
  define a method called sequence that has parameters count and start
  return [] if count == 0
  initialize a variable called output and assign to empty array
  call times on count,
    for each num
      append num+1 * start to the array
  return array

=end

def sequence(count, start)
  output = []
  count.times {|num| output << (num+1) * start }
  output
end


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []