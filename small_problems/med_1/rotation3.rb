require 'pry'
require 'pry-byebug'
def rotate_array(array)
  array[1..-1] + array[0..0]
end

def ls_rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(int)
  start_point = 0
  num_digits = int.to_s.length
  output = int
  num_digits.times do |_|
    output = ls_rotate_rightmost_digits(output, num_digits - start_point)
    start_point += 1
  end
  output
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845