=begin
Write a method that takes a String as an argument, and returns a new String that
contains the original value using a staggered capitalization scheme in which
every other character is capitalized, and the remaining characters are
lowercase. Characters that are not letters should not be changed, but count as
characters when switching between upper and lowercase.

problem input string output NEW string

data structure: string, array for iteration

algorithm:
  define method staggered_case with a string parameter
  initialize output variable and assign to empty string
  iterate through input string characters (spaces included) using index
  if index even, append upcase char to output else append downcase char
  return output
=end

def staggered_case(string)
  output = ''
  string.split("").each_with_index do |char, idx|
    if idx.even?
      output << char.upcase
    else
      output << char.downcase
    end
  end
    output
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

=begin
further explanation: ask caller to choose input start up or down

update method definition
=end
def staggered_case2(string, upper = true)
  output = ''
  string.split("").each_with_index do |char, idx|
    if idx.even? == true && upper == true || (idx.odd? == true && upper == false)
        output << char.upcase
    else
        output << char.downcase
  end
end
    output
end
p staggered_case2('I Love Launch School!', upper = true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case2('ALL_CAPS', upper = true) == 'AlL_CaPs'
p staggered_case2('Ignore 77 the 444 numbers', upper = false) == 'iGnOrE 77 tHe 444 nUmBeRs'


=begin
part 2

ignore non alpha chars when toggling, still return them in the string

UPDATE ALGO
define method staggered_case with a string parameter
  create constant of alpha chars by ranging a-z and A-Z and concating range.to_a
  initialize output variable and assign to empty string
  initialize a variable called upcase and assign it to boolean true
  iterate through input string characters (spaces included)
  use if logic brances
  if char in CHARS && upcase == true
    append char.upcase to output
    upcase == false
  elsif char in CHARS && upcase == false
    append char.upcase to output
    upcase == true
  return output



=end
CHARS = ('a'..'z').to_a + ("A".."Z").to_a
def ignore_staggered_case(string)
  upcase = true
  output = ''
  string.split("").each do |char|
    if CHARS.include?(char) && upcase == true
      output << char.upcase
      upcase = false
    elsif CHARS.include?(char) && upcase == false
      output << char.downcase
      upcase = true
    else
      output << char
    end
  end
    output
end

p ignore_staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p ignore_staggered_case('ALL CAPS') == 'AlL cApS'
p ignore_staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'