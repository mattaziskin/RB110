=begin

Write a method that takes one argument, a string, and returns a new string with
the words in reverse order.

Problem
  Input string output a new string
Examples
  Empty string or all whitespace returns empty string no whitespace
Data Structure
  Array of words, join array at the end
Algorithm
  define a method called reverse_sentence that has a string parameter
  split string by white space to create an array of words
  return result of reverse and join the array with a white space




=end

def reverse_sentence(string)
  string.split(" ").reverse.join(" ")
end


puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

=begin

Write a method that takes one argument, a string containing one or more words,
and returns the given string with words that contain five or more characters
reversed. Each string will consist of only letters and spaces. Spaces should
be included only when more than one word is present.

RETURN THE SAME STRING

Algorithm
  Split setence by white space into words
  iterate through words array with index
    for each word
    word.reverse! if word.length >= 5

  return the array joined by whitespace



=end

def reverse_words(string)
  string.split(" ").each {|word| word.reverse! if word.length >= 5 }.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS