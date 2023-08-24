=begin
Write a method that takes a string, and then returns a hash that contains 3
entries: one represents the number of characters in the string that are
lowercase letters, one represents the number of characters that are uppercase
letters, and one represents the number of characters that are neither.


problemL input string output hash

examples : empty string still outputs hash with values o, spaces count
require symbols for keys

data structure hash

algorithm
def method with a string parameter
create an array of all upper and lowercase letters
create variable called output, assign to hash with keys uppercase: lowercase:
neither: and values of 0
iterate through string characters
using if logic, check if array does not includes char
  increment neither if so

elsif letter == letter.downcase
  increment lowercase if so
else
letter == letter.upcase



=end

def letter_case_count(string)
  valid = ('a'..'z').to_a + ("A".."Z").to_a
  output = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }
  string.each_char do |char|
    if valid.include?(char) == false
      output[:neither] += 1
    elsif char == char.downcase
      output[:lowercase] += 1
    else
      output[:uppercase] += 1
    end
end
output
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }