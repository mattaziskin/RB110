=begin
Write a method that takes an Array of integers as input, multiplies all the
numbers together, divides the result by the number of entries in the Array,
and then prints the result rounded to 3 decimal places. Assume the array is
non-empty.

problem input array of ints output string

examples I need to round to 3 even with zeros, kernel.format
dont need to account for empty or non numberic elements

data structure: array

algorithm

  define a method with an array parameter
  initialize a product variable and assign it to return of calling inject(:*)
    on array
  divide product by arrzy size assign result to average pass that to .to_f
  return interpolated string with Kernel.format
  Kernel.format('%.3f', average)
=end

def show_multiplicative_average(array)
  product = array.inject(:*)
  average = product / array.size.to_f
  "The result is #{Kernel.format('%.3f', average)}"
end


p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667