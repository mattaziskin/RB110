=begin
Write a method that takes one argument, a positive integer, and returns a list
of the digits in the number.

Problem input integer output array

Examples: no non numeric or negative inputs, no zeros before final number

Data structure: array

Algorithm:

Define a method that takes an integer as an argument
create an empty array and assign to variable called output
call to_s on integer and iterate through
append char.to_i to array
return array

=end

def digit_list(integer)
  integer.to_s.chars.each_with_object([]) {|num, array| array << num.to_i }
end


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true