=begin
Sort an array of passed in values using merge sort. You can assume that this
array may contain only one type of data. And that data may be either all numbers
or all strings.

[9, 5, 7, 1] ->
[[9, 5], [7, 1]] ->
[[[9], [5]], [[7], [1]]]

We then work our way back to a flat array by merging
each pair of nested sub-arrays:

[[[9], [5]], [[7], [1]]] ->
[[5, 9], [1, 7]] ->
[1, 5, 7, 9]

Algorithm:

Divide starting array into subarrays of 1 value (partition?)




=end
require 'pry'
require 'pry-byebug'
def merge(arr1, arr2)
  work_array = arr1+arr2
  work_array.length.times do |_|
    work_array.each_with_index do |element, idx|
    unless idx == work_array.length-1
    if work_array[idx] > work_array[idx+1]
      work_array[idx], work_array[idx+1] = work_array[idx+1], work_array[idx]
    else
      next
    end
  end
end
end
  work_array
end

def merge_sort(array)
  return array if array.size == 1
  sub_array_1 = array[0...array.size / 2]
  sub_array_2 = array[array.size / 2...array.size]
  binding.pry
  sub_array_1 = merge_sort(sub_array_1)
  sub_array_2 = merge_sort(sub_array_2)

  merge(sub_array_1, sub_array_2)
end

#p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
#p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
#p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) ==
             %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
#p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) ==
             [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

