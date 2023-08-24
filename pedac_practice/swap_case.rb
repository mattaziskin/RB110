=begin
Write a method that takes a string as an argument and returns a new string in
which every uppercase letter is replaced by its lowercase version, and every
lowercase letter by its uppercase version. All other characters should be
unchanged.

You may not use String#swapcase; write your own version of this method.

problem input string output NEW string

examples: there are spaces and non alpha chars

data structure: string

algorithm:
  define a method called swapcase that has a string parameter
  initialize a variable output and assign to empty string
  iterate through input string characters
  using if logic
    if char == char.upcase
      output << char.downcase
    else
      output << char.downcase
    end

  return output




=end

def swapcase(string)
  output = ''
  string.each_char do |char|
    if char == char.upcase
      output << char.downcase
    else
      output << char.upcase
    end
  end
  output
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'