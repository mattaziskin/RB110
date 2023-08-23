=begin
Write a method that takes an Array of numbers, and returns an Array with the
same number of elements, and each element has the running total from
the original Array.

Problem:  Input array, output new array
A running total is sum of elements up to that point

Examples: Return empty array if array empty, no non integer objects s in array

Data Structure: Array

Algorithm:

Create a method that takes an array as a parameter
return [] if array.empty?
Creat an empty array object and assign to variable output
Create a variable called sum and assign it to integer 0
Iterate through the given array, and sum += element, append sum to output
return output
=end

def running_total(array)
  output = []
  return output if array.empty?
  sum = 0
  array.each do |el|
    sum += el
    output << sum
  end
  output
end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
