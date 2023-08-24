=begin
Write a method that takes two Array arguments in which each Array contains a
list of numbers, and returns a new Array that contains the product of each pair
of numbers from the arguments that have the same index. You may assume that the
arguments contain the same number of elements.

problem input 2 arrays output 1 new array

examples: no need to account for non numeric, or uneven arrays

data structure: array

algorithm:

  define a method called multiply_list with parameters arr1 and arr2
  initialize variable called output and assign to empty array
  iterate through array using each_with_index
  append arr1[idx] * arr2[idx] to output
  return output



=end


def multiply_list(arr1, arr2)
  arr1.each_with_object([]).with_index do |(_, array), idx|
    array << arr1[idx] * arr2[idx]
  end
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_list2(arr1, arr2)
  p arr1.zip(arr2).map {|subarray| subarray[0] * subarray[1]}
end
p multiply_list2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]