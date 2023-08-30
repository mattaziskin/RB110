=begin
Write a method that takes a string, and returns a new string in which every
character is doubled.

Problem input string output new string
example return empty string if string empty, double non-alpha chars too

Data structure: array of string chars, output string

Algorithm:
define repeated method with string parameter
initialize variablecalled output assigned to empty string
iterating through string characters, append to new string object char two times
  string << char << char
return output
=end

def repeater(string)
  output = ""
  string.each_char{|char| output << char << char }
  output
end


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
=begin
DOUBLE CHAR PART 2:

Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Problem: Input a string and output a NEW string
Examples:
Data structure: array of string characters, join the array
Algorithm:

Create a constant variable for valid characters called VALID
	Can use only lower case and call downcase during process
Define a method called double_consonants with a string parameter
Initialize a variable called output and assign to empty array
Iterate through each character
using if logic,
  if VALID.include?(char) append twice to output
else
  append one tine to putput

return output.join("")
=end

VALID = %w(b c d f g h j k l m n p q r s t v w x y z )
def double_consonants(string)
  output = []
  string.each_char do |char|
    if VALID.include?(char.downcase)
      output << char << char
    else
      output << char
    end
  end
  output.join("")
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
