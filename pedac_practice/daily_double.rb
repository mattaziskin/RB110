=begin

Write a method that takes a string argument and returns a new string that
contains the value of the original string with all consecutive duplicate
characters collapsed into a single character.
You may not use String#squeeze or String#squeeze!.

input string output new string

examples, no punctuation, return empty string if string empty

data structure: string

algorithm

write method that takes accepts a string parameter
create an empty string and assign to output variable
iterate through input string characters
append character to string unless last character and character are equal
return output


=end

def crunch(string)
  output = ''
  string.each_char do |char|
    output << char unless output[-1] == char
  end
  output
end



p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''