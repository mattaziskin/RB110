=begin

Convert a string of number characters to an integer without built in methods

Problem Input: string output: integer

Examples: don't need to worry about non numeric characters or neg numbers

Data structure: string / hash to store values

Algorithm

Create a Hash contant with keys of string characters and values of the
corresponding integer value
create method that accepts string parameter
create a holding array
iterate through string chars
append Hash[char] to array
initialize value = 0
iterate through integer array
value += 10 * element



=end

HASH = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(string)
  output = []
  string.each_char { |char| output << HASH[char] }
  value = 0
  output.each { |el| value = 10 * value + el }
  value
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

=begin
signed version

update string iteration to skip if char not in our Hash, to skip signs
add an if clause that returns a neg number if string[0] == - (negative sign)
=end

def string_to_signed_integer(string)
  output = []
  string.each_char { |char| output << HASH[char] unless !HASH.include?(char) }
  value = 0
  output.each { |el| value = 10 * value + el }
  if string[0] == '-'
    value * -1
  else
  value
end
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

=begin

number to string version

Create a new hash with reverse key, value of OG hash
same iteration as first method, using digits not chars
simply return result of array.join
=end

NEW_HASH = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}
def integer_to_string(integer)
  output = []
  integer.digits.each { |char| output << NEW_HASH[char] }
  output.reverse.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

=begin
signed integer to string

=end

def signed_integer_to_string(integer)
  return '0' if integer == 0
  negative = false
  if integer < 0
    negative = true
    integer = integer * -1
  end
  output = []
  integer.digits.each { |char| output << NEW_HASH[char] }
  if negative == false
    output.reverse.join.prepend("+")
  else
    output.reverse.join.prepend("-")
end
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'