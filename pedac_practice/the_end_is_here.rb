=begin
Write a method that returns the next to last word in the String passed to it as
an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

Problem: input string, output new string

Examples: no empty or single word strings

Data structure: array of words from the string

Algorithm
split sentence into words and index the second to last word using neg index

=end

def penultimate(string)
  string.split(" ")[-2]
end
p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'