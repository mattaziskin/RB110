=begin

Write a method that takes two strings as arguments, determines the longest of
the two strings, and then returns the result of concatenating the shorter
string, the longer string, and the shorter string once again. You may assume
that the strings are of different lengths.

Problem:
Input: 2 strings
Output 1 new string

don't have to account for even strings

Examples: if one of the strings is empty, return other string, probably do not
need to adjust for this in code

Data Structure: strings

Algorithm:

Create method with 2 parameters and pass two strings in as arguments
compare length of strings and assign them to longest and shortest
accordingly using < or >
Once determined, using string interpolation, return short long short, there
is no need to output the message




=end

def short_long_short(string1, string2)
  if string1.length > string2.length
    longest = string1
    shortest = string2
  else
    longest = string2
    shortest = string1
  end

  "#{shortest}#{longest}#{shortest}"


end


p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"