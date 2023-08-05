# Write a method that combines two Arrays passed in as arguments, and returns
# a new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.
=begin
def interleave(arr1, arr2)
  collection = []
  arr1.length.times do |num|
    collection << arr1[num]
    collection << arr2[num]
  end
  collection
end
=end

def interleave(arr1, arr2)
  x = arr1.zip(arr2).flatten
  x
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']