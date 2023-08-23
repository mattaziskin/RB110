=begin

Write a method that determines and returns the ASCII string value of a string
that is passed in as an argument. The ASCII string value is the sum of the
ASCII values of every character in the string.
(You may use String#ord to determine the ASCII value of a character.)

Problem input string output integer

Examples: return 0 if string empty

Data structure: array of chars

Algorithm

create method that intakes string as parameter
create sum variable and assign to 0
split string into chars and iterate, calling .ord on each char and
reassign sum to sum + return of char.ord
return sum

=end

def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0