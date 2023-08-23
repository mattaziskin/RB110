=begin

Given a string that consists of some words (all lowercased) and an assortment of
non-alphabetic characters, write a method that returns that string with all of
the non-alphabetic characters replaced by spaces. If one or more non-alphabetic
characters occur in a row, you should only have one space in the result
(the result should never have consecutive spaces).

Problem input string output same string

examples: don't worry about anything other than lowercase alpha chars

data structure: string /  array for iteration, range for char check

algorithm:

create constant CHARS = ('a'..'z')
create method that accepts a string as a parameter
create a variable called valid and assign it to true
split string into characters
iterate through characters
create logic check if char is valid
reassign valid to true if so, else sub character for space unless valid == false
  and assign valid to false, this will skip subsequent invalids
if CHARS.include?(char)
  valid = true
  next
else
  char.sub(" ") unless valid == false
  valid = false

return string

was unable to account for natural space followed by all invalid chars and
another natural space
=end

CHARS = ('a'..'z').to_a
def cleanup(string)
  valid = true
  letters = string.split("")
  p letters
  letters.each do |char|
    if CHARS.include?(char)
      valid = true
    elsif char == " "
      next
    elsif CHARS.include?(char) == false && valid == true
      string.sub!(char, " ")
      valid = false
    else
      string.sub!(char, "")
    end
end
p string.squeeze(" ")
end
p cleanup("---what's my +*& line?") == ' what s my line '