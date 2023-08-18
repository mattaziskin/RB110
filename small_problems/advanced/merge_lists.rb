=begin
input, two arrays DO NOT MUTATE
output one array
use an array data structure

can not use sort methods on the result array
there are uneven arrays, some arrays are empty
validate all input is integer? No

combine the two arrays into one array
work_array = arr1 + arr2?

probably iteration plus parallel assignment checking which element is bigger?

work_array.each_with_index do |element, idx|
  unless idx == work_array.length-1
  if work_array[idx] > work_array[idx+1]
    work_array[idx], work_array[idx+1] = work_array[idx+1], work_array[idx]
  else
    next
  end
end




=end

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


p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
