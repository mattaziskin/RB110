=begin
Write a method that returns a list of all substrings of a string. The returned
list should be ordered by where in the string the substring begins. This means
that all substrings that start at position 0 should come first, then all
substrings that start at position 1, and so on. Since multiple substrings will
occur at each position, the substrings at a given position should be returned
in order from shortest to longest.

problem: input string output array of substrings

examples: no notes

data structure: array

algorithm
  define substring method with a string parameter
  initialize a variable called output and assign it to a an empty array
  split string into characters and iterate through characters with index
  for each character
    call times on (string.length-idx) and pass to block
      append to array a slice of string starting with idx ending at (num + idx)
        0..0  0..1 0..2
          1..1 1..2

  return array

=end
def substrings(string)
  output = []
  string.chars.each_with_index do |char, idx|
    (string.length - idx).times do |num|
      output << string[idx..(num + idx)]
    end
  end
  output
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

=begin

find palindromic

get all substrings, iterate through that array,, select sub == sub.reverse
=end

def palindromes(string)
  substring_array = substrings(string)
  substring_array.select { |substr| substr == substr.reverse && substr.length > 1 }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
