=begin

Write a method that returns a list of all substrings of a string that start at
the beginning of the original string. The return value should be arranged in
order from shortest to longest substring.

Problem input string output array of substrings starting with first letter
examples: all strings of alpha chars, no empty string

data structure: array

Algorithm:

  define leading_substrings method with string parameter
  initialize output variable and assign to empty array
  string.length.times append to output a slice of string equal to [0..number]
  return output
=end

def leading_substrings(string)
  output = []
  string.length.times {|num| output << string[0..num] }
  output
end
p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']