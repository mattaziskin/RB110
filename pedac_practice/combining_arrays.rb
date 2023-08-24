=begin
Write a method that takes two Arrays as arguments, and returns an Array that
contains all of the values from the argument Arrays. There should be no
duplication of values in the returned Array, even if there are duplicates in
the original Arrays.

problem: input 2 arrays, output 1 array, arrays are same length

examples: remove duplicates,

Data structure: array

Algorithm:

Define method with 2 array parameters
find length of first array
create a variable called output and assign to an empty array
length.times |num|
  append array1[num] and array2[num]
end
return the return value of calling destructive unique on output


=end

def merge(arr1, arr2)
  output = []
  output << arr1 << arr2
  p output.flatten.uniq!
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]