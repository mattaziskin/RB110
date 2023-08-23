=begin

Given a string of words separated by spaces, write a method that takes this
string of words and returns a string in which the first and last letters of
every word are swapped.

You may assume that every word contains at least one letter, and that the
string will always contain at least one word. You may also assume that each
string contains nothing but words and spaces.

Problem: input string output string

data structure: array after splitting string into words

Algorithm

define a method called swap that takes a string parameter
create array variable and assign to return of split sting by " "
iterate through array
for each word parallel assign word[0] and word[-1] to word[-1] and word[0]
return array.join(" ")




=end

def swap(string)
  string.split(" ").each { |word| word[0], word[-1] = word[-1], word[0] }.join(" ")
end
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'