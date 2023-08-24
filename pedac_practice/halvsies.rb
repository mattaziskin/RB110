=begin
Write a method that takes an Array as an argument, and returns two Arrays
(as a pair of nested Arrays) that contain the first half and second half of
the original Array, respectively. If the original array contains an odd number\
of elements, the middle element should be placed in the first half Array.

Problem Input array output array of two arrays

Exampls: account for empty arrays, single element and odd number of elemernts

Data Structure Array

Algorithm

define a method with an array parameter
initialize a variable called output and assign to an empty array
find middle point of input array
  subtract 1 from result if even, add 1 if odd
append a slice of input array equal to first element up to half point
then append another slice of array equal to halfway point plus 1 to the end of
array
output << array[0..middle] << array[(middle+1)..-1]]
return output

=end

def halvsies(array)
  output = []
  if array.length.odd?
    middle = (array.length / 2)
  else
    middle = (array.length / 2) - 1
  end
  p output << array[0..middle] << array[(middle+1)..-1]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]