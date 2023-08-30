=begin
Write a method that takes an Array of numbers and then returns the sum of the
sums of each leading subsequence for that Array. You may assume that the Array
always contains at least one number.

Problem input array output integer

examples, no non numeric or neg integers, no empty arrays

data structure: array

Algorithm:

  define a method sum_of_sums with an array parameter
  initialize a variable called sum and assign to 0
  iterate through array with index
  sum = sum + array[0..idx].sum
  return sum

=end

def sum_of_sums(array)
  sum = 0
  array.each_with_index {|_, idx| sum += array[0..idx].sum }
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35