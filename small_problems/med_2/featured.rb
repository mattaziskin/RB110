=begin
A featured number (something unique to this exercise) is an odd number that is
a multiple of 7, and whose digits occur exactly once each. So, for example, 49
is a featured number, but 98 is not (it is not odd), 97 is not
(it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next
featured number that is greater than the argument. Return an error message if
there is no next featured number.

Problem:
Requirements: input and output integer or error
number must be odd, and multiple of 7 AND all digits are unique,
larger than input
return error message if invalid
Test case shows us a long enough number makes this impossible
it should be part of a test, possibly top end of range?
Validate input?  Leading zeros?


Data Structure / Algorithm
helper method to find next multiple of 7, so we can iterate by 7
instead of checking every digit along the way

def find_7(intput)
  number = input
  output = 0
  loop do
  if number % 7 == 0
    output = number
  else
    number += 1
  end
  output
end

another method to check if all digits are unique?  part of main method?

def unique_digits?(number)
  number.digits.length == number.digits.uniq.length
end

main method takes input, passes input + 1 to first check so we don't return the
starting number if it's a multiple of 7 already
new loop checks if unique and odd, increments by 7 if not
breaks loop when all conditions true
returns new integer

def featured(number)
  next_multiple = find_multiple_of_7(number + 1) # dont return start number
  loop do
    break if unique_digits?(next_multiple) && next_multiple.odd?
    next_multiple += 7
  end
  next_multiple



use a range to iterate then split number into digits?
(num..CAP).each do |number|
  array = number.to_s.split




=end
require 'pry'
require 'pry-byebug'
def find_multiple_of_7(input)
  number = input
  output = 0
  loop do
    output = number
    break if output % 7 == 0
    number += 1
  end
output
end

def unique_digits?(number)
  number.digits.length == number.digits.uniq.length
end

def featured(number)
  next_multiple = find_multiple_of_7(number + 1) # dont return start number
  loop do
    break if unique_digits?(next_multiple) && next_multiple.odd? ||
             next_multiple.digits.length > 10
    next_multiple += 7
  end
  return p "ERROR TOO LARGE A NUMBER" if next_multiple.digits.length > 10
  next_multiple
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
