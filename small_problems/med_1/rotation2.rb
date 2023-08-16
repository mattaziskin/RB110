require 'pry'
require 'pry-byebug'
def rotate_array(array)
  array[1..-1] + array[0..0]
end

def rotate_rightmost_digits(number, digits)
  return number if digits == 1
  array_number = number.digits.reverse
  if digits == number.digits.length
    return rotate_array(array_number).join("").to_i
  end
  beginning = array_number[0..array_number.size - digits - 1] # creates unaffected segment of digits
  ending = array_number[-digits..-1] # the section of digits to be rotated
  (beginning + rotate_array(ending)).join("").to_i # concat unaffected digits with rotated digits
end

def ls_rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

