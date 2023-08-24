=begin

Write a method named include? that takes an Array and a search value as
arguments. This method should return true if the search value is in the array,
false if it is not. You may not use the Array#include? method in your solution.

problem input array output boolean

examples: account for empty, nil, no alpha chars

data structure = array

algorithm

  define method that accepts an array and find parameter
  iterate through array and check if elemet == find
  return false unless condition above evaluates as true

=end

def include?(array, find)
  array.each { |el| return true if el == find }
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false