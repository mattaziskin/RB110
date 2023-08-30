=begin
Write a method that takes a first name, a space, and a last name passed as a
single String argument, and returns a string that contains the last name,
a comma, a space, and the first name.

Problem:
  Input string output string
Examples

Data Structure
  String
Algorithm
  define a swap_name method with a parameter of name
  split array by whitespace
  reverse array
  reassign name[0] to "#{name},"
  join array with whitespace

=end

def swap_name(name)
  name = name.split(" ").reverse
  name[0] = "#{name[0]},"
  name.join(" ")
end

p swap_name('Joe Roberts') == 'Roberts, Joe'