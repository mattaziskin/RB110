=begin

Write a method that takes a single String argument and returns a new string that
contains the original value of the argument with the first character of every
word capitalized and all other letters lowercase.


problem input string output NEW string

examples, quoted words do not get upcased

data structure string

algorithm
define a method word_cap which has a string parameter
initialize a new variable called output assign to empty string
split string into words
  append to output the result of calling capitalize on each word
return output

=end

def word_cap(string)
  output = []
  string.split(" ").each {|word| output << word.capitalize }
  output.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'