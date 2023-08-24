=begin

Write a method that combines two Arrays passed in as arguments, and returns a
new Array that contains all elements from both Array arguments, with the
elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same
number of elements.

problem: input two arrays output 1 array

data structure array

algo
define method with arr1 and arr2 parameters
initialize output variable and assign to empty array
find length of arr1 and call times on it
create block parameter num in block passed to times
append arr1[num] and arr2[num] to output
return output

=end

def interleave(arr1, arr2)
  output = []
  arr1.length.times { |num| output << arr1[num] << arr2[num] }
  output
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']